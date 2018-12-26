/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.Controller;

import com.TimeOver.Entity.Employee;
import com.TimeOver.Entity.Parameter;
import com.TimeOver.Interfaces.EmployeeInterface;
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
public class EmployeeController {
    @Autowired
    EmployeeInterface ei;
    
    @RequestMapping("/employee")
    public ModelAndView getAll() {
        ModelAndView mav = new ModelAndView("home");
        List<Employee> employees = ei.getAll();
        mav.addObject("EmployeeList", employees);
        return mav;
    }
}
