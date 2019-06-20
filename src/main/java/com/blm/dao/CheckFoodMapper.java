package com.blm.dao;

import com.blm.bean.CheckFood;

public interface CheckFoodMapper {
    int deleteByPrimaryKey(String foodid);

    int insert(CheckFood record);

    int insertSelective(CheckFood record);

    CheckFood selectByPrimaryKey(String foodid);

    int updateByPrimaryKeySelective(CheckFood record);

    int updateByPrimaryKey(CheckFood record);
}