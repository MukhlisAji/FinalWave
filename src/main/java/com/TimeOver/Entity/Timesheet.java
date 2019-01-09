/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.Entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Mukhlish
 */
@Entity
@Table(name = "timesheet")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Timesheet.findAll", query = "SELECT t FROM Timesheet t")
    , @NamedQuery(name = "Timesheet.findByTimesheetId", query = "SELECT t FROM Timesheet t WHERE t.timesheetId = :timesheetId")
    , @NamedQuery(name = "Timesheet.findByPeriode", query = "SELECT t FROM Timesheet t WHERE t.periode = :periode")})
public class Timesheet implements Serializable {

    private static final long serialVersionUID = 1L;
    @JsonManagedReference
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 6)
    @Column(name = "timesheet_id")
    private String timesheetId;
    @Lob
    @Column(name = "file")
    private byte[] file;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "periode")
    private String periode;
    @JsonBackReference
    @JoinColumn(name = "nik", referencedColumnName = "nik")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Employee nik;
    @JsonBackReference
    @OneToMany(mappedBy = "timesheetId", fetch = FetchType.LAZY)
    private List<Overtime> overtimeList;

    public Timesheet() {
    }

    public Timesheet(String timesheetId) {
        this.timesheetId = timesheetId;
    }

    public Timesheet(String timesheetId, String periode) {
        this.timesheetId = timesheetId;
        this.periode = periode;
    }

    public Timesheet(String timesheetId, byte[] file, String periode, Employee nik) {
        this.timesheetId = timesheetId;
        this.file = file;
        this.periode = periode;
        this.nik = nik;
    }

    public String getTimesheetId() {
        return timesheetId;
    }

    public void setTimesheetId(String timesheetId) {
        this.timesheetId = timesheetId;
    }

    public byte[] getFile() {
        return file;
    }

    public void setFile(byte[] file) {
        this.file = file;
    }

    public String getPeriode() {
        return periode;
    }

    public void setPeriode(String periode) {
        this.periode = periode;
    }

    public Employee getNik() {
        return nik;
    }

    public void setNik(Employee nik) {
        this.nik = nik;
    }

    @XmlTransient
    public List<Overtime> getOvertimeList() {
        return overtimeList;
    }

    public void setOvertimeList(List<Overtime> overtimeList) {
        this.overtimeList = overtimeList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (timesheetId != null ? timesheetId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Timesheet)) {
            return false;
        }
        Timesheet other = (Timesheet) object;
        if ((this.timesheetId == null && other.timesheetId != null) || (this.timesheetId != null && !this.timesheetId.equals(other.timesheetId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.TimeOver.Entity.Timesheet[ timesheetId=" + timesheetId + " ]";
    }
    
}
