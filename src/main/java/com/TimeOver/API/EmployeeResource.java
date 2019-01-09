/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.API;

import com.TimeOver.Entity.Employee;
import com.TimeOver.Interfaces.EmployeeInterface;
import com.TimeOver.Repositories.EmployeeRepository;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Mukhlish
 */
@RestController
@RequestMapping("/employee")
public class EmployeeResource {

    @Autowired
    EmployeeInterface employeeInterface;
    @Autowired
    EmployeeRepository er;

    @GetMapping("/allEmployees")
    public List<Employee> getAllEmployee() {
        return employeeInterface.getAll();
    }

    @RequestMapping("/byId/{nik}")
    public Optional<Employee> getById(@PathVariable("nik") final String nik){
        return er.findById(nik);
    }
}
