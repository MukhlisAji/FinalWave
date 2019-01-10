/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.Controller;

import Email.sendEmail;
import com.TimeOver.Entity.Employee;
import com.TimeOver.Entity.Overtime;
import com.TimeOver.Entity.Presence;
import com.TimeOver.Entity.Timesheet;
import com.TimeOver.Interfaces.OvertimeInterface;
import com.TimeOver.Interfaces.PresenceInterface;
import com.TimeOver.Interfaces.TimesheetInterface;
import java.sql.Timestamp;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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
public class OvertimeController {

    @Autowired
    OvertimeInterface oi;
    @Autowired
    PresenceInterface pi;
    @Autowired
    TimesheetInterface ti;

    @RequestMapping("/DashboardEmployee")
    public ModelAndView getAll() {
        ModelAndView mav = new ModelAndView("view/DashboardEmployee");
        List<Overtime> overtimes = oi.getAll();
        mav.addObject("overtimeList", overtimes);
        return mav;
    }

    @RequestMapping("/DashboardManager")
    public ModelAndView DM() {
        ModelAndView mav = new ModelAndView("view/DashboardManager");
        List<Overtime> overtimes = oi.getAll();
        mav.addObject("OvertimeList", overtimes);
        return mav;
    }

    @RequestMapping("/Result")
    public ModelAndView search(@RequestParam("nik") String nik) {
        ModelAndView mav = new ModelAndView("view/result");
        List<Presence> overtimes = pi.findOvertime(new Employee(nik));
        for (Presence overtime : overtimes) {
            List<Overtime> list = overtime.getOvertimeList();
            mav.addObject("OvertimeList", list);
        }
        return mav;
    }

    @RequestMapping(value = "/approve/{id}", method = RequestMethod.GET)
    public ModelAndView approve(@PathVariable("id") int id) {
        ModelAndView mv = new ModelAndView("redirect:/DashboardManager");
        Object oh = oi.getOvertimeById(id);
        Overtime o = (Overtime) oh;
        String desc = o.getDescription();
        int fee = o.getFee();
        int dur = o.getOtDuration();
        String t = o.getTimesheetId().getTimesheetId();
        int p = o.getPresenceId().getPresenceId();
        Overtime overtime = new Overtime(id, desc, fee, dur, "approved", new Timesheet(t), new Presence(p));
        oi.saveOrUpdate(overtime);
        sendEmail email = new sendEmail();
        email.sent(true);
//        mv.addObject("lists", ri.getRoleById(id));
        return mv;
    }

    @RequestMapping(value = "/reject/{id}", method = RequestMethod.GET)
    public ModelAndView reject(@PathVariable("id") int id) {
        ModelAndView mv = new ModelAndView("redirect:/DashboardManager");
        Object oh = oi.getOvertimeById(id);
        Overtime o = (Overtime) oh;
        String desc = o.getDescription();
        int fee = o.getFee();
        int dur = o.getOtDuration();
        String t = o.getTimesheetId().getTimesheetId();
        int p = o.getPresenceId().getPresenceId();
        Overtime overtime = new Overtime(id, desc, fee, dur, "rejected", new Timesheet(t), new Presence(p));
        oi.saveOrUpdate(overtime);
        sendEmail email = new sendEmail();
        email.sent(false);
//        mv.addObject("lists", ri.getRoleById(id));
        return mv;
    }

    @RequestMapping(value = "/saveOvertime", method = RequestMethod.POST)
    public ModelAndView save(@RequestParam("durasi") int duration, @RequestParam("Description") String Description) {
        ModelAndView mv = new ModelAndView("redirect:/");
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        int idp = pi.findPresenceId();
        String idO = ti.findTimesheetId();
        Overtime overtime = new Overtime(null, Description, 20000, duration, "request", new Timesheet(idO), new Presence(idp));
        oi.saveOrUpdate(overtime);

        return mv;
    }
}
