package com.pluralsight.controller;

import com.pluralsight.model.Test;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Plamen Admin on 9/14/2019.
 */

@RestController
public class SpinController {

    @RequestMapping(value = "/spin", method = RequestMethod.POST)
    public String spin() throws InterruptedException {
        Test.setReady();

        Thread.sleep(1000);

        return "OK";
    }

    @RequestMapping(value = "/reload")
    public String reset(){
        System.out.println("RESET");
        Test.numReset();
        Test.reset();
        return "true";
    }

    @RequestMapping(value = "/choose")
    public String choose() throws InterruptedException {
        while (Test.getNum().equals("0")){
            Thread.sleep(100);
        }
        return Test.getNum();
    }

    @RequestMapping(value = "/setHouseNum", method = RequestMethod.GET)
    public String setHouseNum(@RequestParam String id){
        Test.setHouseNum(id);

        return "OK";
    }
}
