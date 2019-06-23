package com.blm.service;

import com.blm.bean.User;

import java.util.List;

public interface UserService {

    public void insert(User user);

    public List<User> selectAllUser();

    public User loginp(String phone, String password);

    public void sendMsg(String phone);

    public User selectUserByPhone(String phone);

    public User checkUserName(String username);
}
