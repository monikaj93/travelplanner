package com.travelplanner.service;

import javax.validation.Valid;

import com.travelplanner.model.AppUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = {"/", "/login"}, method = RequestMethod.GET)
    public ModelAndView login() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("login");
        return modelAndView;
    }


    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public ModelAndView registration() {
        ModelAndView modelAndView = new ModelAndView();
        AppUser appUser = new AppUser();
        modelAndView.addObject("appUser", appUser);
        modelAndView.setViewName("registration");
        return modelAndView;
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public ModelAndView createNewUser(@Valid AppUser appUser, BindingResult bindingResult) {
        ModelAndView modelAndView = new ModelAndView();
        AppUser appUserExists = userService.findUserByEmail(appUser.getEmail());
        if (appUserExists != null) {
            bindingResult
                    .rejectValue("email", "error.appUser",
                            "There is already a appUser registered with the email provided");
        }
        if (bindingResult.hasErrors()) {
            modelAndView.setViewName("registration");
        } else {
            userService.saveUser(appUser);
            modelAndView.addObject("appUser", new AppUser());
            modelAndView.setViewName("login");

        }
        return modelAndView;
    }

    @RequestMapping(value = {"/home"}, method = RequestMethod.GET)
    public ModelAndView home() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home");
        return modelAndView;
    }
}