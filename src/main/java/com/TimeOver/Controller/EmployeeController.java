/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.Controller;

import com.TimeOver.Entity.Employee;
import com.TimeOver.Entity.Overtime;
import com.TimeOver.Entity.Parameter;
import com.TimeOver.Entity.Presence;
import com.TimeOver.Interfaces.EmployeeInterface;
import com.TimeOver.Interfaces.OvertimeInterface;
import com.TimeOver.Interfaces.PresenceInterface;
import com.TimeOver.Repositories.PresenceRepository;
import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.lang.reflect.Method;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import sun.misc.Request;

/**
 *
 * @author Mukhlish
 */
@Controller
@RequestMapping("/")
public class EmployeeController {

    @Autowired
    EmployeeInterface ei;
    @Autowired
    PresenceInterface pi;
    @Autowired
    OvertimeController oc;
    @Autowired
    PresenceRepository pr;


    @RequestMapping(value="/DashboardAdmin", method = RequestMethod.GET)
    public ModelAndView getAll() {
        ModelAndView mav = new ModelAndView("view/PageAdminEmployee");
        List<Employee> employees = ei.getAll();
        mav.addObject("employeeList", employees);
        return mav;
    }
    
    @RequestMapping("/getOvertime")
    public ModelAndView getOvertime() {
        ModelAndView mav = new ModelAndView("jsp/home");

        Object o = pr.findOvertime();
        Presence p = (Presence) o;
//        HttpSession session = 
//        Overtime overtime = (Overtime) list1;
//        mav.addObject("Overtime", list1);

        return mav;
    }

    @RequestMapping("/")
    public ModelAndView home() {
        ModelAndView mav = new ModelAndView("view/Login");
        return mav;
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView Login(@RequestParam("nik") String nik,
            @RequestParam("password") String password) throws ParseException {
        Object e1 = ei.getemployeeById(nik);
        Employee e = (Employee) e1;
        String Pass = e.getPassword();
        ModelAndView mav = null;
        System.out.println("test" + nik + password);
        if (BCrypt.checkpw(password, Pass)) {
            List<Employee> manager = e.getEmployeeList();
            boolean admin = e.getIsAdmin();
//            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
//            String dates = String.valueOf(timestamp);
//            String b = dates.substring(0, 10);
//            Object cekP = daoi.cekPresence(nik, b);

            Presence p;
//        Kondisi jika id tidak kosong akan menjadi fungsi update
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            String dates = String.valueOf(timestamp);
            String hasil = "";
            String b = dates.substring(0, 10);
            String[] c = b.split("-");
            for (int i = 0; i < c.length; i++) {
                hasil = c[1] + "/" + c[2] + "/" + c[0];
            }
            DateFormat format = new SimpleDateFormat("MM/dd/yyyy", Locale.ENGLISH);
            Date datesPresence = format.parse(hasil);
            String checkIn = dates.substring(11, 16);

            p = new Presence(null, checkIn, null, datesPresence, new Employee(nik));
            pi.saveOrUpdate(p);

//            request.setAttribute("param1", nik);
            if (!manager.isEmpty() && admin == false) {
                mav = new ModelAndView("redirect:/DashboardManager");
            } else if (admin == true) {
                mav = new ModelAndView("redirect:/DashboardAdmin");
            } else if (manager.isEmpty() && admin == false) {
                mav = new ModelAndView("redirect:/DashboardEmployee");
//                return "forward:/DashboardEmployee";

            }

        } else {

        }

        return mav;
    }

    @RequestMapping("/logout")
    public ModelAndView logout(@RequestParam("durasi") int duration,
            @RequestParam("Description") String Description) throws ParseException {
        String nik = "14424";
        Object e = ei.getemployeeById(nik);
        Employee e1 = (Employee) e;
        String Pass = e1.getPassword();
        ModelAndView mav = null;

        List<Employee> manager = e1.getEmployeeList();
        boolean admin = e1.getIsAdmin();
//            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
//            String dates = String.valueOf(timestamp);
//            String b = dates.substring(0, 10);
//            Object cekP = daoi.cekPresence(nik, b);

        Presence p;
//        Kondisi jika id tidak kosong akan menjadi fungsi update
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        String dates = String.valueOf(timestamp);
        String hasil = "";
        String b = dates.substring(0, 10);
        String[] c = b.split("-");
        for (int i = 0; i < c.length; i++) {
            hasil = c[1] + "/" + c[2] + "/" + c[0];
        }
        DateFormat format = new SimpleDateFormat("MM/dd/yyyy", Locale.ENGLISH);
        Date datesPresence = format.parse(hasil);
        String checkout = dates.substring(11, 16);
        int id = pi.findPresenceId();
        System.out.println(id);

        Object o = pi.getpresenceById(id);
        Presence presence = (Presence) o;
        System.out.println(presence);
//        List<Presence> al1 = (List<Presence>) o;
//        Presence p1 = null;
//        for (int i = 0; i < al1.size(); i++) {
//            p1 = al1.get(i);
//        }
//        
        String Checkin = presence.getCheckIn();

        p = new Presence(id, Checkin, checkout, datesPresence, new Employee(nik));
        pi.saveOrUpdate(p);

        oc.save(duration, Description);
        mav = new ModelAndView("redirect:/");

        return mav;
    }
}
