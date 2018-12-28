/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.Repositories;

import com.TimeOver.Entity.Parameter;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 *
 * @author Mukhlish
 */
public interface ParameterRepository extends JpaRepository<Parameter, Integer> {
    @Query("SELECT r FROM Parameter r WHERE r.id = :id") 
    List<Parameter> findIdByName(@Param("id") Integer id);
}
