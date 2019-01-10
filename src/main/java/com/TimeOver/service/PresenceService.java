/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.service;

import com.TimeOver.Entity.Employee;
import com.TimeOver.Entity.Parameter;
import com.TimeOver.Entity.Presence;
import com.TimeOver.Interfaces.PresenceInterface;
import com.TimeOver.Repositories.PresenceRepository;
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
public class PresenceService implements PresenceInterface{
    @Autowired
    PresenceRepository pr;

    @Override
    public List<Presence> getAll() {
     return (List<Presence>) pr.findAll();
    }

    @Override
    public List<Presence> getAllId(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Object getpresenceById(Integer id) {
        return pr.findById(id).get();
    }

    @Override
    public void saveOrUpdate(Presence presence) {
        pr.save(presence);
    }

    @Override
    public void delete(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Integer findPresenceId() {
        return pr.findPresenceId();
        
    }
    @Override
    public List<Presence> findOvertime(Employee nik) {
        return pr.findOvertime(nik, "12");
    }
}
