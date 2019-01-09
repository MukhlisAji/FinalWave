/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.Interfaces;

import com.TimeOver.Entity.Employee;
import com.TimeOver.Entity.Parameter;
import com.TimeOver.Entity.Timesheet;
import java.util.List;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Mukhlish
 */
public interface TimesheetInterface {

    public List<Timesheet> getAll();

    public Timesheet getAllId(String id);

    public Timesheet gettimesheetById(Integer id);

    public String findTimesheetId();

    public void saveOrUpdate(Timesheet timesheet);

    public void delete(Integer id);
}
