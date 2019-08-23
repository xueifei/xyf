package com.deepcoding;

import com.deepcoding.domain.User;
import com.deepcoding.mapper.UserMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = SpringbootMybatisApplication.class)
public class MybatisTest {
    @Autowired
    private UserMapper userMapper;
    @Test
    public void selectAll(){
        List<User> users = userMapper.selectAll();
        System.out.println(users);
    }
}
