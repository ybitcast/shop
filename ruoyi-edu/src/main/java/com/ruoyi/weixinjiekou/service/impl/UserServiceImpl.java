package com.ruoyi.weixinjiekou.service.impl;

import com.ruoyi.weixinjiekou.mapper.UserMapper;
import com.ruoyi.weixinjiekou.pojo.User;
import com.ruoyi.weixinjiekou.service.UserServcie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserServcie {
    @Autowired
    UserMapper userMapper;


    @Override
    public User getUserByOpenId(String openId) {
        return userMapper.getUserByOpenId(openId);
    }

    @Override
    public void add(User user) {
        userMapper.add(user);
    }

    @Override
    public void update(User user) {
        userMapper.update(user);
    }

    @Override
    public User findAccountByToken(String token) {
        User u =userMapper.findAccountByToken(token);
        return u;
    }
}
