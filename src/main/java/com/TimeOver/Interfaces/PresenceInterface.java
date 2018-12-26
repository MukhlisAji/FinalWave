/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.Interfaces;

import com.TimeOver.Entity.Parameter;
import com.TimeOver.Entity.Presence;
import java.util.List;

/**
 *
 * @author Mukhlish
 */
public interface PresenceInterface {
    public List<Presence> getAll();
    
    public List<Presence> getAllId(Integer id);
    
    public Presence getpresenceById(Integer id);
    
    public void saveOrUpdate(Presence parameter);
    
    public void delete(Integer id);
}
