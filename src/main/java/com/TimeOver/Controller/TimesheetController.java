/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.Controller;

import com.TimeOver.Entity.Employee;
import com.TimeOver.Entity.Parameter;
import com.TimeOver.Entity.Timesheet;
import com.TimeOver.Interfaces.TimesheetInterface;
import com.TimeOver.service.TimeshseetService;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Base64;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

/**
 *
 * @author Mukhlish
 */
@Controller
@RequestMapping("/")
public class TimesheetController {

    @Autowired
    TimesheetInterface ti;

    @RequestMapping("/upload")
    public ModelAndView upload() {
        ModelAndView mav = new ModelAndView("jsp/index");
        return mav;
    }

    @RequestMapping("/timesheet")
    public ModelAndView getAll() {
        ModelAndView mav = new ModelAndView("home");
        List<Timesheet> timesheets = ti.getAll();
        mav.addObject("timesheetList", timesheets);
        return mav;
    }

    @PostMapping("/uploadFile")
    public ModelAndView uploadFile(@RequestParam("file") String file) throws IOException {
        ModelAndView mv = new ModelAndView("jsp/index");
//        ti.saveOrUpdate(file);
        String file1 = encodeToString(file);
        byte[] pdf = file1.getBytes();
        
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        String dates = String.valueOf(timestamp);
        String hasil = "";
        String b = dates.substring(0, 10);
        String[] c = b.split("-");
        for (int i = 0; i < c.length; i++) {
            hasil = c[1] +"-"+ c[0];
        }
        Timesheet timesheet = new Timesheet("2", file.getBytes(), hasil, new Employee("14409"));
        
        ti.saveOrUpdate(timesheet);
//            DBFile dbFile = new DBFile(fileName, file.getContentType(), file.getBytes());
//        String fileDownloadUri = ServletUriComponentsBuilder.fromCurrentContextPath()
//                .path("/downloadFile/")
//                .path(dbFile.getId())
//                .toUriString();
//--
//        return new UploadFileResponse(dbFile.getFileName(), fileDownloadUri,
//                file.getContentType(), file.getSize());
        return mv;
    }
    
    public static String encodeToString(String file) throws FileNotFoundException, IOException{
        String encodedfile="";
        File file1 = new File(file);
        FileInputStream fileInputStream = new FileInputStream(file1);
        byte[] pdfdata = new byte[(int) file1.length()];
        fileInputStream.read(pdfdata);
        encodedfile = Base64.getEncoder().encodeToString(pdfdata);
        return encodedfile;
    }

    @RequestMapping("/downloadFile/{id}")
    public Timesheet downloadFile(@PathVariable("id") String id) {
        // Load file from database
        return ti.getAllId(id);
    }
}
