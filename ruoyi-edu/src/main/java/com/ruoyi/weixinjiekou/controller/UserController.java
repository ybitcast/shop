package com.ruoyi.weixinjiekou.controller;


import com.alibaba.fastjson.JSONObject;
import com.ruoyi.weixinjiekou.pojo.User;
import com.ruoyi.weixinjiekou.service.UserServcie;
import com.ruoyi.weixinjiekou.util.WeChatUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@RestController
public class UserController {
    @Autowired
    UserServcie servcie;


    @RequestMapping("hello")
    public String hello(){
        return "hello";
    }

    private String appid = "wx4cb423ba2a6aebe6";
    private String secret = "fae0f5bf1c636e7ec37cc4b188bdc421";

    @RequestMapping("/login")
    public String login(@RequestBody String code){
        String url = "https://api.weixin.qq.com/sns/jscode2session?appid=" +
                appid + "&secret=" + secret + "&js_code=" + code + "&grant_type=authorization_code";
        String str = WeChatUtil.httpRequest(url, "GET", null);
        JSONObject jsonObject = JSONObject.parseObject(str);
        System.out.println(jsonObject);
        String openid =jsonObject.getString("openid");
        String session_key =jsonObject.getString("session_key");
        String token = "token_"+ new Date().getTime();
        User u = new User();
        u.setOpenid(openid);
        u.setSession_key(session_key);
        u.setToken(token);
        //根据  openid 判断数据库中是否有一条记录
        User user =  servcie.getUserByOpenId(openid);
        if(user == null){
            servcie.add(u);
        }else{
            user.setToken(token);
            servcie.update(user);
        }
        return token;
    }



    @RequestMapping("/checklogin")
    public Map checklogin(@RequestBody String token){
        Map map = new HashMap<>();
        User user = servcie.findAccountByToken(token);
        if( user != null){
            map.put("is_login",true);
        }else{
            map.put("is_login",false);
        }
        return map;
    }
}
