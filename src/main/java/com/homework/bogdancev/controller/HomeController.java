package com.homework.bogdancev.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {

    @GetMapping("/")
    public String hello() {
        return "Hello";
    }
    @GetMapping("/user")
    public String user() {
        return "Hello User";
    }

    @GetMapping("/admin")
    public String admin() {
        return "Hello Admin";
    }

}
