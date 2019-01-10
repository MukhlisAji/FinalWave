/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.Repositories;

import com.TimeOver.Entity.Employee;
import com.TimeOver.Entity.Parameter;
import com.TimeOver.Entity.Presence;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 *
 * @author Mukhlish
 */

public interface PresenceRepository extends JpaRepository<Presence, Integer> {
    @Query("SELECT MAX(presenceId) FROM Presence") 
    Integer findPresenceId();
    @Query("SELECT p FROM Presence p WHERE p.nik = ?1 and p.presenceDate LIKE '2018_12%'") 
    List<Presence> findOvertime(Employee nik, String mount);
    @Query("SELECT p FROM Presence p ") 
    List<Presence> findbyNik();
}
