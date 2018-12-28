/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.service;

import com.TimeOver.Entity.Parameter;
import com.TimeOver.Entity.Timesheet;
import com.TimeOver.Interfaces.TimesheetInterface;
import com.TimeOver.Repositories.TimesheetRepository;
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
public class TimeshseetService implements TimesheetInterface{
    @Autowired
    TimesheetRepository tr;

    @Override
    public List<Timesheet> getAll(){
     return (List<Timesheet>) tr.findAll();
    }

    @Override
    public List<Timesheet> getAllId(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Timesheet gettimesheetById(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void saveOrUpdate(Timesheet timesheet) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String findTimesheetId() {
        return tr.findTimesheetId();
    }
}
