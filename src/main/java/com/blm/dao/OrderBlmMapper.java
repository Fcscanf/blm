package com.blm.dao;

import com.blm.bean.OrderBlm;

public interface OrderBlmMapper {
    int deleteByPrimaryKey(String orderid);

    int insert(OrderBlm record);

    int insertSelective(OrderBlm record);

    OrderBlm selectByPrimaryKey(String orderid);

    int updateByPrimaryKeySelective(OrderBlm record);

    int updateByPrimaryKey(OrderBlm record);
}