/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.API;

import com.TimeOver.Entity.Overtime;
import com.TimeOver.Interfaces.OvertimeInterface;
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
@RequestMapping("/overtime")
public class OvertimeResource {
    @Autowired
    OvertimeInterface overtimeInterface;
    
    @GetMapping("/allOvertime")
    public List<Overtime> getOvertime(){
        return overtimeInterface.getAll();
    }
}
