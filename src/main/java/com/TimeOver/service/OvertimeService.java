/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.service;

import com.TimeOver.Entity.Overtime;
import com.TimeOver.Entity.Parameter;
import com.TimeOver.Interfaces.OvertimeInterface;
import com.TimeOver.Repositories.OvertimeRepository;
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
public class OvertimeService implements OvertimeInterface{
    @Autowired
    OvertimeRepository or;

    @Override
    public List<Overtime> getAll() {
        return (List<Overtime>) or.findAll();
    }

    @Override
    public List<Overtime> getAllId(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Object getOvertimeById(Integer id) {
        return or.findById(id).get();
    }

    @Override
    public void saveOrUpdate(Overtime overtime) {
        or.save(overtime);
    }

    @Override
    public void delete(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
