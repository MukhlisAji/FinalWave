/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.resources;

/**
 *
 * @author Mukhlish
 */
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RestController;

@RestController

public class restController {

@GetMapping("/hello")

public String sayHello(){

return "Hello World";

}

}