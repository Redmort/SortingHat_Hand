package com.pluralsight.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class HelloController {

    @RequestMapping(value ="/hover", method = RequestMethod.POST)
    public String sayHello( Model model){
        return "hello";
    }
}
