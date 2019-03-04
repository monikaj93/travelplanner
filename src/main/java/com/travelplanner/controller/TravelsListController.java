package com.travelplanner.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TravelsListController {

    //dodawanie podrozy
    @RequestMapping(value = "/add_travel", method = RequestMethod.GET)
    public ModelAndView addTravel(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("add_travel");
        return modelAndView;
    }
}
