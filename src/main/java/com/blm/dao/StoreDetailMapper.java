package com.blm.dao;

import com.blm.bean.StoreDetail;

public interface StoreDetailMapper {
    int deleteByPrimaryKey(String storeid);

    int insert(StoreDetail record);

    int insertSelective(StoreDetail record);

    StoreDetail selectByPrimaryKey(String storeid);

    int updateByPrimaryKeySelective(StoreDetail record);

    int updateByPrimaryKey(StoreDetail record);

    public StoreDetail findStoreDetailByUsername(String username);//根据登录的商家，显示相应的店面信息

}