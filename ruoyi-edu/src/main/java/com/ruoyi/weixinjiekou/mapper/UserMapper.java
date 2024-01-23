package com.ruoyi.weixinjiekou.mapper;

import com.ruoyi.weixinjiekou.pojo.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {
    User getUserByOpenId(String openId);

    void add(User user);

    void update(User user);

    User findAccountByToken(String token);
}
