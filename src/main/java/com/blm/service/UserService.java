package com.blm.service;

import com.blm.bean.User;

import java.util.List;

public interface UserService {

    public void insert(User user);

    public List<User> selectAllUser();

    public User loginp(String phone, String password);

    public void sendMsg(String phone);

    public User selectUserByPhone(String phone);

    public User selectUserByUsername(String username);

    public User login(String username,String  password);//商家用户名+密码登录


}
