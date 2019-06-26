package com.blm.service;

import com.blm.bean.UserDetail;

import java.util.List;
import java.util.Map;


public interface UserDetailService {

    //增加方法
    int insert_wz(UserDetail userDetail);

    //删除方法
    int delete_wz(String id);

    //修改方法
    int update_wz(UserDetail userDetail);

    List<UserDetail> finduser_wz(String userid);

}