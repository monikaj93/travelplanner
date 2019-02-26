package com.travelplanner.service;

import com.travelplanner.model.AppUser;
import com.travelplanner.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.web.context.WebApplicationContext;

import javax.annotation.PostConstruct;

public class CustomUserDetailsService implements UserDetailsService {
    @Autowired
    private WebApplicationContext applicationContext;
    private UserRepository userRepository;

    public CustomUserDetailsService() {
        super();
    }

    @PostConstruct
    public void completeSetup() {
        userRepository = applicationContext.getBean(UserRepository.class);
    }

    @Override
    public UserDetails loadUserByUsername(final String email) {
        final AppUser appUser = userRepository.findByEmail(email);
        if (appUser == null) {
            throw new UsernameNotFoundException(email);
        }
        return new AppUserPrincipal(appUser);
    }
}
