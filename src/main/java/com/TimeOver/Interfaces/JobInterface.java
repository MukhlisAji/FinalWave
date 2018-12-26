/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.Interfaces;

import com.TimeOver.Entity.Job;
import com.TimeOver.Entity.Parameter;
import java.util.List;

/**
 *
 * @author Mukhlish
 */
public interface JobInterface {
    public List<Job> getAll();
    
    public List<Job> getAllId(Integer id);
    
    public Job getjobById(Integer id);
    
    public void saveOrUpdate(Job job);
    
    public void delete(Integer id);
}
