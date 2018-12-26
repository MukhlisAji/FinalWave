/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.Interfaces;

import com.TimeOver.Entity.Overtime;
import com.TimeOver.Entity.Parameter;
import java.util.List;

/**
 *
 * @author Mukhlish
 */
public interface OvertimeInterface {
    public List<Overtime> getAll();
    
    public List<Overtime> getAllId(Integer id);
    
    public Overtime getOvertimeById(Integer id);
    
    public void saveOrUpdate(Overtime overtime);
    
    public void delete(Integer id);
}
