/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.Interfaces;

import com.TimeOver.Entity.Employee;
import com.TimeOver.Entity.Parameter;
import com.TimeOver.Entity.Presence;
import java.util.List;
import org.springframework.data.repository.query.Param;

/**
 *
 * @author Mukhlish
 */
public interface PresenceInterface {
    public List<Presence> getAll();
    
    public List<Presence> getAllId(Integer id);
    
    public Integer findPresenceId();
    
    public Object getpresenceById(Integer id);
    
    public List<Presence> findOvertime(Employee nik);
    
    public void saveOrUpdate(Presence parameter);
    
    public void delete(Integer id);
}
