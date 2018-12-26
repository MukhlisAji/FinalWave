/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.Interfaces;

import com.TimeOver.Entity.Parameter;
import java.util.List;

/**
 *
 * @author Mukhlish
 */
public interface ParameterInterface {
    public List<Parameter> getAll();
    
    public List<Parameter> getAllId(Integer id);
    
    public Parameter getparamById(Integer id);
    
    public void saveOrUpdate(Parameter parameter);
    
    public void delete(Integer id);
}
