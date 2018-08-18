package com.travelplanner.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;


@Controller
public class LoginController {


    @RequestMapping("/")
    public String showLoginPage(ModelMap model){

        return "login";
    }



}
