package com.travelplanner.user;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;

@Configuration
@ComponentScan(basePackages = "com.*")
@SpringBootApplication
//@PropertySource(value = {"config/user-application.properties"})
public class Application extends SpringBootServletInitializer {


    public static void main(String[] args) throws Exception {
        SpringApplication.run(Application.class, args);
    }
}
