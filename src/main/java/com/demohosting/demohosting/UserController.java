package com.demohosting.demohosting;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")
public class UserController {
    @GetMapping("user")
    public String getUser(){
        return "hello userssss";
    }
}
