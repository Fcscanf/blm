package com.blm.dao;

import com.blm.bean.UserDetail;

import java.util.List;

public interface UserDetailMapper {
    int deleteByPrimaryKey(String userid);

    int insert(UserDetail record);

    int insertSelective(UserDetail record);

    UserDetail selectByPrimaryKey(String userid);

    int updateByPrimaryKeySelective(UserDetail record);

    int updateByPrimaryKey(UserDetail record);

    List<UserDetail> finduser_wz(String userid);
}