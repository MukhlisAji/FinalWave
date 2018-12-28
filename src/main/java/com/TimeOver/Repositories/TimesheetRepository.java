/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.Repositories;

import com.TimeOver.Entity.Timesheet;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

/**
 *
 * @author Mukhlish
 */
public interface TimesheetRepository extends JpaRepository<Timesheet, Integer> {

    @Query("SELECT MAX(timesheetId) FROM Timesheet")
    String findTimesheetId();
}
