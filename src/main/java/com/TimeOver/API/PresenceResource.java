/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.API;

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
}
