package com.ruoyi.weixinjiekou.service;

import com.ruoyi.weixinjiekou.pojo.User;

public interface UserServcie {

    public User getUserByOpenId(String openId);

    void add(User user);

    void update(User user);

    User findAccountByToken(String token);
}
