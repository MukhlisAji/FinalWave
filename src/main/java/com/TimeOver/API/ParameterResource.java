/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.API;

import com.TimeOver.Entity.Parameter;
import com.TimeOver.Repositories.ParameterRepository;
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
@RequestMapping("/parameter")
public class ParameterResource {
    @Autowired
    ParameterRepository pr;
    
    @GetMapping("/allParameter")
    public List<Parameter> getAll(){
        return pr.findAll();
    }
}
