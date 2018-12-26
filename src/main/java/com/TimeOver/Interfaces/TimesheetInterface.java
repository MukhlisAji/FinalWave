/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.Interfaces;

import com.TimeOver.Entity.Parameter;
import com.TimeOver.Entity.Timesheet;
import java.util.List;

/**
 *
 * @author Mukhlish
 */
public interface TimesheetInterface {
    public List<Timesheet> getAll();
    
    public List<Timesheet> getAllId(Integer id);
    
    public Timesheet gettimesheetById(Integer id);
    
    public void saveOrUpdate(Timesheet timesheet);
    
    public void delete(Integer id);
}
