package com.travelplanner.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PlannerController {

    @RequestMapping(value = "planner", method = RequestMethod.GET)
    public ModelAndView planner() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("planner");
        return modelAndView;
    }
}
