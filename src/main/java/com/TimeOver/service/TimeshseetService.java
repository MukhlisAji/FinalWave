/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.service;

import com.TimeOver.Entity.Employee;
import com.TimeOver.Entity.Parameter;
import com.TimeOver.Entity.Timesheet;
import com.TimeOver.Interfaces.TimesheetInterface;
import com.TimeOver.Repositories.TimesheetRepository;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

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
    public Timesheet getAllId(String id) {
    return tr.getOne(id);
    }

    @Override
    public Timesheet gettimesheetById(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void saveOrUpdate(Timesheet timesheet) /*throws IOException*/ {
//     String fileName = StringUtils.cleanPath(file.getOriginalFilename());

//        try {
            // Check if the file's name contains invalid characters
//            if(fileName.contains("..")) {
//                throw new FileStorageException("Sorry! Filename contains invalid path sequence " + fileName);
//            }
            
//            Timesheet timesheet = null;


            tr.save(timesheet);
//        } catch (IOException ex) {
//            throw new FileStorageException("Could not store file " + fileName + ". Please try again!", ex);
//        }
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
