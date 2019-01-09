/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.service;

import com.TimeOver.Entity.Employee;
import com.TimeOver.Entity.Parameter;
import com.TimeOver.Interfaces.EmployeeInterface;
import com.TimeOver.Repositories.EmployeeRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Mukhlish
 */
@Service
@Transactional
public class EmployeeService implements EmployeeInterface {

    @Autowired
    EmployeeRepository er;

    @Override
    public List<Employee> getAll() {
        return (List<Employee>) er.findAll();
    }

    @Override
    public List<Employee> getAllId(String nik) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Employee getemployeeById(String nik) {

        return er.findById(nik).get();
    }

    @Override
    public void saveOrUpdate(Employee employee) {
        er.save(employee);
    }

    @Override
    public void delete(String nik) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Employee getEmployeeByPass(String password) {
        return er.getEmployeeByPass(password);
    }

    @Override
    public List<Employee> getAlll() {
        return (List<Employee>) er.getAlll();
    }
}
