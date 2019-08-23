package com.deepcoding.controller;

import com.deepcoding.domain.User;
import com.deepcoding.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class UserController {

    @Autowired
    private IUserService userService;

    @RequestMapping("/user")
    public List<User> selectAll(){
        return userService.selectAll();
    }

}
