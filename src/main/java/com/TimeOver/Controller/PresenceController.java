/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.Controller;

import com.TimeOver.Entity.Parameter;
import com.TimeOver.Entity.Presence;
import com.TimeOver.Interfaces.PresenceInterface;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
    
    @RequestMapping("/presence")
    public ModelAndView getAll() {
        ModelAndView mav = new ModelAndView("home");
        List<Presence> presences = pi.getAll();
        mav.addObject("presenceList", presences);
        return mav;
    }
}
