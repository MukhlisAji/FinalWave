/*
 * To
change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.Controller;

import Email.SendConfrimPass;
import com.TimeOver.Entity.Employee;
import com.TimeOver.Entity.Job;
import com.TimeOver.Entity.Overtime;
import com.TimeOver.Entity.Parameter;
import com.TimeOver.Entity.Presence;
import com.TimeOver.Interfaces.EmployeeInterface;
import com.TimeOver.Interfaces.OvertimeInterface;
import com.TimeOver.Interfaces.PresenceInterface;
import com.TimeOver.Repositories.PresenceRepository;
import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.lang.reflect.Method;
import java.security.Principal;
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
import org.apache.logging.log4j.util.Strings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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

    @RequestMapping(value = "/DashboardAdmin", method = RequestMethod.GET)
    public ModelAndView getAll() {
        ModelAndView mav = new ModelAndView("view/PageAdminEmployee");
        List<Employee> employees = ei.getAlll();
        mav.addObject("employeeList", employees);
        return mav;
    }

    @RequestMapping("/getOvertime")
    public ModelAndView getOvertime() {
        ModelAndView mav = new ModelAndView("jsp/home");

//        Object o = pr.findOvertime();
//        Presence p = (Presence) o;
//        HttpSession session = 
//        Overtime overtime = (Overtime) list1;
//        mav.addObject("Overtime", list1);
        return mav;
    }
//

    @RequestMapping("/")
    public ModelAndView home(Principal principal) throws ParseException {
        String nik = principal.getName();
        ModelAndView mav = null;
        System.out.println(nik);
        Object e1 = ei.getemployeeById(nik);
        Employee e = (Employee) e1;
        List<Employee> manager = e.getEmployeeList();
        boolean admin = e.getIsAdmin();
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
        if (!manager.isEmpty() && admin == false) {
            mav = new ModelAndView("redirect:/DashboardManager");
        } else if (admin == true) {
            mav = new ModelAndView("redirect:/DashboardAdmin");
        } else if (manager.isEmpty() && admin == false) {
            mav = new ModelAndView("redirect:/DashboardEmployee");
        }

        mav.addObject("principal", e);
        return mav;
    }

//    @RequestMapping("/login1")
//    public ModelAndView logIn() {
//        ModelAndView mav = new ModelAndView("view/Login");
//        return mav;
//    }
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage() {
        return "view/Login";
    }

    @RequestMapping(value = "/login2", method = RequestMethod.POST)
    public ModelAndView Login(@RequestParam("nik") String nik,
            @RequestParam("password") String password) throws ParseException {
        Object e1 = ei.getemployeeById(nik);
        Employee e = (Employee) e1;
        String Pass = e.getPassword();
        HttpSession session = null;
//        session.setAttribute("session", e);
        ModelAndView mav = null;
        Model model = null;
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

    @RequestMapping("/logout1")
    public ModelAndView logout(@RequestParam("durasi") int duration,
            @RequestParam("Description") String Description, Principal principal) throws ParseException {
        String nik = principal.getName();
        Object e = ei.getemployeeById(nik);
        Employee e1 = (Employee) e;
        String Pass = e1.getPassword();
        ModelAndView mav = null;

        String dur = String.valueOf(duration);

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

        if (duration != 0) {
            oc.save(duration, Description);
        }

        mav = new ModelAndView("redirect:/logout");

        return mav;
    }

    @RequestMapping(value = "/EditEmployee/{nik}", method = RequestMethod.GET)
    public ModelAndView doedit(@PathVariable("nik") String nik) {
        ModelAndView mv = new ModelAndView("view/EditEmployee");
        mv.addObject("employee", ei.getemployeeById(nik));
        return mv;
    }

    @RequestMapping(value = "/saveEmployee", method = RequestMethod.POST)
    public ModelAndView saveEmployee(@RequestParam("nik") String nik,
            @RequestParam("name") String name,
            @RequestParam("email") String email,
            //            @RequestParam("password") String password,
            @RequestParam("phoneNumber") String phoneNumber,
            @RequestParam("hireDate") String hireDate,
            @RequestParam("salary") Integer salary,
            @RequestParam("jobId") String jobId,
            @RequestParam("managerId") String managerId
    //            @RequestParam("isAdmin") String isAdmin,
    //            @RequestParam("isDelete") String isDelete,
    //            @RequestParam("isActive") String isActive
    ) throws ParseException {
        ModelAndView mv = new ModelAndView("redirect:/DashboardAdmin/");
        String pass = nik;
        String Password = BCrypt.hashpw(pass, BCrypt.gensalt());
        Boolean isAdmin = Boolean.valueOf("false");
        Boolean isDelete = Boolean.valueOf("false");
        Boolean isActive = Boolean.valueOf("false");
        DateFormat format = new SimpleDateFormat("MM/dd/yyyy", Locale.ENGLISH);
        Date dates = format.parse(hireDate);
        Employee employee = new Employee(nik, name, email, Password, phoneNumber, dates, salary, isAdmin, isDelete, isActive, new Job(jobId), new Employee(managerId));
        ei.saveOrUpdate(employee);
        SendConfrimPass sendConfrimPass = new SendConfrimPass();
        sendConfrimPass.setName(name);
        sendConfrimPass.setEmail(email);
        sendConfrimPass.setNik(nik);
        sendConfrimPass.setPassword(Password);
        sendConfrimPass.sent(true);

//        Job job= new Job(jobId, jobTitle);
//        ji.saveOrUpdate(job);
        return mv;
    }

    @RequestMapping(value = "/UpdateEmployee", method = RequestMethod.POST)
    public ModelAndView UpdateEmployee(@RequestParam("nik") String nik,
            @RequestParam("name") String name,
            @RequestParam("email") String email,
            //            @RequestParam("password") String password,
            @RequestParam("phoneNumber") String phoneNumber,
            @RequestParam("hireDate") String hireDate,
            @RequestParam("salary") Integer salary,
            @RequestParam("jobId") String jobId,
            @RequestParam("managerId") String managerId
    //            @RequestParam("isAdmin") String isAdmin,
    //            @RequestParam("isDelete") String isDelete,
    //            @RequestParam("isActive") String isActive
    ) throws ParseException {
        ModelAndView mv = new ModelAndView("redirect:/DashboardAdmin/");
        String pass = nik;
        String Password = BCrypt.hashpw(pass, BCrypt.gensalt());
        Boolean isAdmin = Boolean.valueOf("false");
        Boolean isDelete = Boolean.valueOf("false");
        Boolean isActive = Boolean.valueOf("false");
        String hasil = "";
        String[] c = hireDate.split("-");
        for (int i = 0; i < c.length; i++) {
            hasil = c[1] + "/" + c[2] + "/" + c[0];
        }
        DateFormat format = new SimpleDateFormat("MM/dd/yyyy", Locale.ENGLISH);
        Date dates = format.parse(hasil);
        Employee employee = new Employee(nik, name, email, Password, phoneNumber, dates, salary, isAdmin, isDelete, isActive, new Job(jobId), new Employee(managerId));
        ei.saveOrUpdate(employee);
//        Job job= new Job(jobId, jobTitle);
//        ji.saveOrUpdate(job);
        return mv;
    }

    @RequestMapping("/DeleteEmployee/{nik}")
    public ModelAndView DeleteEmployee(@PathVariable("nik") String nik)
            throws ParseException {
        ModelAndView mv = new ModelAndView("redirect:/DashboardAdmin/");
        Object e1 = ei.getemployeeById(nik);
        Employee e = (Employee) e1;

        String name = e.getName();
        String email = e.getEmail();
        String password = e.getPassword();
        String phoneNumber = e.getPhoneNumber();
        String Password = e.getPassword();
        Integer salary = e.getSalary();
        String hireDate = String.valueOf(e.getHireDate());
        String[] Dates = hireDate.split("-");
        String hasil = "";
        for (int i = 0; i < Dates.length; i++) {
            hasil = Dates[1] + "/" + Dates[2] + "/" + Dates[0];
        }
        DateFormat format = new SimpleDateFormat("MM/dd/yyyy", Locale.ENGLISH);
        Date dates = format.parse(hasil);
        Boolean isAdmin = e.getIsAdmin();
        Boolean isDelete = Boolean.valueOf("true");
        Boolean isActive = e.getIsActive();
        String jobId = String.valueOf(e.getJobId().getJobId());
        String managerId = String.valueOf(e.getManagerId().getNik());
        Employee employee = new Employee(nik, name, email, Password, phoneNumber, dates, salary, isAdmin, isDelete, isActive, new Job(jobId), new Employee(managerId));
        ei.saveOrUpdate(employee);

//        Job job= new Job(jobId, jobTitle);
//        ji.saveOrUpdate(job);
        return mv;
    }

    @RequestMapping(value = "/ChangePassword/{password}", method = RequestMethod.GET)
    public ModelAndView ConfrimPassword(@PathVariable("password") String password) {
        ModelAndView mv = new ModelAndView("view/ChangePassword");
        mv.addObject("cp", ei.getEmployeeByPass(password));
        return mv;
    }

    @RequestMapping(value = "/changePass", method = RequestMethod.POST)
    public ModelAndView ChangePassword(@RequestParam("nik") String nik,
            @RequestParam("name") String name,
            @RequestParam("email") String email,
            @RequestParam("password") String password,
            @RequestParam("phoneNumber") String phoneNumber,
            @RequestParam("hireDate") String hireDate,
            @RequestParam("salary") Integer salary,
            @RequestParam("jobId") String jobId,
            @RequestParam("managerId") String managerId,
            @RequestParam("isAdmin") String isAdmin,
            @RequestParam("isDelete") String isDelete
    //            @RequestParam("isActive") String isActive
    ) throws ParseException {
        ModelAndView mv = new ModelAndView("redirect:/DashboardAdmin/");

        String Password = BCrypt.hashpw(password, BCrypt.gensalt());
        Boolean isActive = Boolean.valueOf("true");
        Boolean isDeletee = Boolean.valueOf(isDelete);
        Boolean isAdminn = Boolean.valueOf(isAdmin);
        String hasil = "";
        String[] c = hireDate.split("-");
        for (int i = 0; i < c.length; i++) {
            hasil = c[1] + "/" + c[2] + "/" + c[0];
        }
        DateFormat format = new SimpleDateFormat("MM/dd/yyyy", Locale.ENGLISH);
        Date dates = format.parse(hasil);
        Employee employee = new Employee(nik, name, email, Password, phoneNumber, dates, salary, isAdminn, isDeletee, isActive, new Job(jobId), new Employee(managerId));
        ei.saveOrUpdate(employee);
//        Job job= new Job(jobId, jobTitle);
//        ji.saveOrUpdate(job);
        return mv;
    }
}
