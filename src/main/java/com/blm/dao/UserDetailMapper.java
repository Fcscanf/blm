package com.blm.dao;

import com.blm.bean.UserDetail;

public interface UserDetailMapper {
    int deleteByPrimaryKey(String id);

    int insert(UserDetail record);

    int insertSelective(UserDetail record);

    UserDetail selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(UserDetail record);

    int updateByPrimaryKey(UserDetail record);
}