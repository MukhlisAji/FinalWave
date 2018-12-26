/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.Repositories;

import com.TimeOver.Entity.Timesheet;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author Mukhlish
 */
public interface TimesheetRepository extends JpaRepository<Timesheet, Integer> {
    
}
