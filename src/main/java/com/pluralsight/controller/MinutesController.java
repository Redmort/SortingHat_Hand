package com.pluralsight.controller;

import com.pluralsight.model.Exercise;
import com.pluralsight.model.Test;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MinutesController {

    @RequestMapping(value = "/isReady")
    public String addMinutes(Model model) throws InterruptedException {

        if (Test.isReady()){
            return "true";
        }else {
            return "false";
        }
    }
}
