package com.deepcoding.service.impl;

import com.deepcoding.domain.User;
import com.deepcoding.mapper.UserMapper;
import com.deepcoding.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private UserMapper userMapper;
    @Override
    public List<User> selectAll() {
        return userMapper.selectAll();
    }
}
