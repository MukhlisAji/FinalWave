/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.Controller;

import com.TimeOver.Entity.Overtime;
import com.TimeOver.Entity.Parameter;
import com.TimeOver.Interfaces.OvertimeInterface;
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
public class OvertimeController {
    @Autowired
    OvertimeInterface oi;
    
    @RequestMapping("/overtime")
    public ModelAndView getAll() {
        ModelAndView mav = new ModelAndView("home");
        List<Overtime> overtimes = oi.getAll();
        mav.addObject("overtimeList", overtimes);
        return mav;
    }
}
