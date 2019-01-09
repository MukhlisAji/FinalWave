/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.Repositories;

import com.TimeOver.Entity.Employee;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 *
 * @author Mukhlish
 */
public interface EmployeeRepository extends JpaRepository<Employee, String> {
    @Query("SELECT MAX(nik) FROM Employee") 
    Integer newNik();
    @Query("SELECT e FROM Employee e WHERE is_delete = false ") 
    List<Employee> getAlll();
    
    @Query("SELECT e FROM Employee e WHERE e.password = :password") 
    Employee getEmployeeByPass(@Param("password") String password);

}
