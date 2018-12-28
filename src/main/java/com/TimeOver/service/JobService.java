/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.service;

import com.TimeOver.Entity.Job;
import com.TimeOver.Entity.Parameter;
import com.TimeOver.Interfaces.JobInterface;
import com.TimeOver.Repositories.JobRepository;
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
public class JobService implements JobInterface{
    @Autowired
    JobRepository jr;

    @Override
    public List<Job> getAll() {
     return (List<Job>) jr.findAll();
    }

    @Override
    public List<Job> getAllId(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Job getjobById(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void saveOrUpdate(Job job) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
