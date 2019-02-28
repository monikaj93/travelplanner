package com.travelplanner.service;

import com.travelplanner.model.AppUser;
import com.travelplanner.repository.AppUserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;


@Service("userService")
public class UserService {

    private AppUserRepository userRepository;
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Autowired
    public UserService(AppUserRepository userRepository,
                       BCryptPasswordEncoder bCryptPasswordEncoder
                       ) {
        this.userRepository = userRepository;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
    }

    public AppUser findUserByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    public AppUser saveUser(AppUser appUser) {
        //appUser.setName(appUser.getName());
        appUser.setPassword(bCryptPasswordEncoder.encode(appUser.getPassword()));
        appUser.setActive(1);
        return userRepository.save(appUser);
    }

}
