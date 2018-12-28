/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.Controller;

import com.TimeOver.Entity.Employee;
import com.TimeOver.Entity.Overtime;
import com.TimeOver.Entity.Presence;
import com.TimeOver.Interfaces.PresenceInterface;
import com.TimeOver.Repositories.PresenceRepository;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Mukhlish
 */
@Controller
@RequestMapping("/")
public class PresenceController {

    @Autowired
    PresenceInterface pi;
    @Autowired
    PresenceRepository pr;

    @RequestMapping("/presence")
    public ModelAndView getAll() {
        ModelAndView mav = new ModelAndView("home");
        List<Presence> presences = pi.getAll();
        mav.addObject("presenceList", presences);
        return mav;
    }

    @RequestMapping("/Dashboa")
    public ModelAndView DE() {
        ModelAndView mav = new ModelAndView("view/DashboardEmployee");
//        String nik = (String) request.getAttribute("param1");
        for (Presence presence : pr.findbyNik()) {
//            System.out.println(presence);
            List<Overtime> overtimes = presence.getOvertimeList();
//            for (Overtime overtime : overtimes) {
//                System.out.println(overtime.getOtDuration());
                mav.addObject("overtimeList", overtimes);
//            }
            
        }
        return mav;
    }

    @RequestMapping("/savePresence")
    public ModelAndView save(@RequestParam("nik") String nik) throws ParseException {
        ModelAndView mv = new ModelAndView("redirect:/");
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
        Employee e = new Employee("14409");

        p = new Presence(null, checkIn, null, datesPresence, e);
        pi.saveOrUpdate(p);

        return mv;
    }
}
