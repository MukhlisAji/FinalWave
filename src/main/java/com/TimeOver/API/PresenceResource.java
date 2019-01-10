/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.API;

import com.TimeOver.Entity.Employee;
import com.TimeOver.Entity.Overtime;
import com.TimeOver.Entity.Presence;
import com.TimeOver.Repositories.PresenceRepository;
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
@RequestMapping("/presence")
public class PresenceResource {
    @Autowired
    PresenceRepository pr;
    
    @GetMapping("/allPresence")
    public List<Presence> getAll(){
        return pr.findAll();
    }
    
    @GetMapping("/find")
    public List<Presence> find(){
        return pr.findOvertime(new Employee("14424"), "12");
    }
    
    @GetMapping("/findOver")
    public List<Overtime> findOver(){
        List<Presence> list1 = pr.findOvertime(new Employee("14424"), "12");
        List<Overtime> list = null;
        for (Presence presence : list1) {
            list = presence.getOvertimeList();
            
        }
        return list;
    }
}
