/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.Interfaces;

import com.TimeOver.Entity.Employee;
import com.TimeOver.Entity.Parameter;
import java.util.List;

/**
 *
 * @author Mukhlish
 */
public interface EmployeeInterface {
    public List<Employee> getAll();
    
    public List<Employee> getAllId(String nik);
    
    public Employee getemployeeById(String nik);
    
    public void saveOrUpdate(Employee employee);
    
    public void delete(String nik);
}
