/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.Controller;

import com.TimeOver.Entity.Parameter;
import com.TimeOver.Interfaces.ParameterInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.TimeOver.Repositories.ParameterRepository;
import java.util.List;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Mukhlish
 */
@Controller
@RequestMapping("/")
public class ParameterController {

    @Autowired
    ParameterInterface pi;

    @RequestMapping("/parameter")
    public ModelAndView getAll() {
        ModelAndView mav = new ModelAndView("home");
        List<Parameter> parameter = pi.getAll();
        mav.addObject("parameterList", parameter);
        return mav;
    }

    @RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
    public ModelAndView dodetail(@PathVariable("id") Integer id) {
        ModelAndView mv = new ModelAndView("view");
        mv.addObject("parameterList", pi.getAllId(id));
        return mv;
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView doedit(@PathVariable("id") Integer id) {
        ModelAndView mv = new ModelAndView("edit");
        mv.addObject("lists", pi.getparamById(id));
        return mv;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(@RequestParam("id") String id, @RequestParam("ParamName") String ParamName, @RequestParam("Value") String Value) {
        ModelAndView mv = new ModelAndView("redirect:/");
        Parameter p;
//        Kondisi jika id tidak kosong akan menjadi fungsi update
        if (!id.isEmpty()) {
            p = (Parameter) pi.getparamById(Integer.parseInt(id));
        } //        Jika id tidak kosong akan menjadi create
        else {
            int val = Integer.parseInt(Value);
            p = new Parameter(null, ParamName, val);
            pi.saveOrUpdate(p);
        }

        return mv;
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView getDelete(@PathVariable("id") Integer id) {
        ModelAndView mv = new ModelAndView("redirect:/");
        pi.delete(id);
        return mv;
    }

}
