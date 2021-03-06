/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.API;

import com.TimeOver.Entity.Timesheet;
import com.TimeOver.Repositories.TimesheetRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Mukhlish
 */
@RestController
@RequestMapping("/timesheet")
public class TimesheetResource {

    @Autowired
    TimesheetRepository tr;

    @GetMapping("/allTimesheet")
    public List<Timesheet> getAll() {
        return tr.findAll();
    }
}
