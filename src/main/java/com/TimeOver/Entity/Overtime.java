/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.Entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Mukhlish
 */
@Entity
@Table(name = "overtime")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Overtime.findAll", query = "SELECT o FROM Overtime o")
    , @NamedQuery(name = "Overtime.findByOvertimeId", query = "SELECT o FROM Overtime o WHERE o.overtimeId = :overtimeId")
    , @NamedQuery(name = "Overtime.findByDescription", query = "SELECT o FROM Overtime o WHERE o.description = :description")
    , @NamedQuery(name = "Overtime.findByFee", query = "SELECT o FROM Overtime o WHERE o.fee = :fee")
    , @NamedQuery(name = "Overtime.findByOtDuration", query = "SELECT o FROM Overtime o WHERE o.otDuration = :otDuration")
    , @NamedQuery(name = "Overtime.findByStatus", query = "SELECT o FROM Overtime o WHERE o.status = :status")})
public class Overtime implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "overtime_id")
    private Integer overtimeId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "description")
    private String description;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fee")
    private int fee;
    @Basic(optional = false)
    @NotNull
    @Column(name = "ot_duration")
    private int otDuration;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "status")
    private String status;
    @JoinColumn(name = "timesheet_id", referencedColumnName = "timesheet_id")
    @ManyToOne(fetch = FetchType.LAZY)
    private Timesheet timesheetId;
    @JoinColumn(name = "presence_id", referencedColumnName = "presence_id")
    @ManyToOne(fetch = FetchType.LAZY)
    private Presence presenceId;

    public Overtime() {
    }

    public Overtime(Integer overtimeId) {
        this.overtimeId = overtimeId;
    }

    public Overtime(Integer overtimeId, String description, int fee, int otDuration, String status) {
        this.overtimeId = overtimeId;
        this.description = description;
        this.fee = fee;
        this.otDuration = otDuration;
        this.status = status;
    }

    public Overtime(Integer overtimeId, String description, int fee, int otDuration, String status, Timesheet timesheetId, Presence presenceId) {
        this.overtimeId = overtimeId;
        this.description = description;
        this.fee = fee;
        this.otDuration = otDuration;
        this.status = status;
        this.timesheetId = timesheetId;
        this.presenceId = presenceId;
    }

    public Integer getOvertimeId() {
        return overtimeId;
    }

    public void setOvertimeId(Integer overtimeId) {
        this.overtimeId = overtimeId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getFee() {
        return fee;
    }

    public void setFee(int fee) {
        this.fee = fee;
    }

    public int getOtDuration() {
        return otDuration;
    }

    public void setOtDuration(int otDuration) {
        this.otDuration = otDuration;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Timesheet getTimesheetId() {
        return timesheetId;
    }

    public void setTimesheetId(Timesheet timesheetId) {
        this.timesheetId = timesheetId;
    }

    public Presence getPresenceId() {
        return presenceId;
    }

    public void setPresenceId(Presence presenceId) {
        this.presenceId = presenceId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (overtimeId != null ? overtimeId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Overtime)) {
            return false;
        }
        Overtime other = (Overtime) object;
        if ((this.overtimeId == null && other.overtimeId != null) || (this.overtimeId != null && !this.overtimeId.equals(other.overtimeId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.TimeOver.Entity.Overtime[ overtimeId=" + overtimeId + " ]";
    }
    
}
