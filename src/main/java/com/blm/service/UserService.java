package com.blm.service;

import com.blm.bean.StoreRegistTemp;
import com.blm.bean.User;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface UserService {

    public void insert(User user);

    public List<User> selectAllUser();

    public User loginp(String phone, String password);

//    向手机发送验证码
    public void sendMsg(String phone, String code);

//    根据手机号码查找用户
    public User selectUserByPhone(String phone);

//    检查用户姓名是否已存在
    public User checkUserName(String username);

    public void insertStore(StoreRegistTemp storeRegistTemp);

    public String uploadImage(MultipartFile file);

    public User selectUserByUsername(String username);

    public User login(String username, String password);
}
