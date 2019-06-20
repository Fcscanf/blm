package com.blm.dao;

import com.blm.bean.FoodDetail;

public interface FoodDetailMapper {
    int deleteByPrimaryKey(String foodid);

    int insert(FoodDetail record);

    int insertSelective(FoodDetail record);

    FoodDetail selectByPrimaryKey(String foodid);

    int updateByPrimaryKeySelective(FoodDetail record);

    int updateByPrimaryKey(FoodDetail record);
}