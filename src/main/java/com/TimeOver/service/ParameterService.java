/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.service;

import com.TimeOver.Entity.Parameter;
import com.TimeOver.Interfaces.ParameterInterface;
import com.TimeOver.Repositories.ParameterRepository;
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
public class ParameterService implements ParameterInterface {

    @Autowired
    ParameterRepository pr;

    @Override
    public List<Parameter> getAll() {
        return (List<Parameter>) pr.findAll();
    }

    @Override
    public List<Parameter> getAllId(Integer id) {
        return (List<Parameter>) pr.findIdByName(id);
    }

    @Override
    public Parameter getparamById(Integer id) {
        return pr.getOne(id);
    }

    @Override
    public void saveOrUpdate(Parameter parameter) {
        pr.save(parameter);
    }

    @Override
    public void delete(Integer id) {
    pr.deleteById(id);
    }

}
