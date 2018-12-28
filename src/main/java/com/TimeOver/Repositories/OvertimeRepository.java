/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.Repositories;

import com.TimeOver.Entity.Overtime;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

/**
 *
 * @author Mukhlish
 */
public interface OvertimeRepository extends JpaRepository<Overtime, Integer> {
     @Query("SELECT MAX(overtimeId) FROM Overtime")
    String findOvertimeId();
}
