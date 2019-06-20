package com.blm.dao;

import com.blm.bean.StoreDetail;

public interface StoreDetailMapper {
    int deleteByPrimaryKey(String storeid);

    int insert(StoreDetail record);

    int insertSelective(StoreDetail record);

    StoreDetail selectByPrimaryKey(String storeid);

    int updateByPrimaryKeySelective(StoreDetail record);

    int updateByPrimaryKey(StoreDetail record);
}