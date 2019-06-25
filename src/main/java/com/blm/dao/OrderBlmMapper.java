package com.blm.dao;

import com.blm.bean.Order;
import com.blm.bean.OrderBlm;

import java.util.List;

public interface OrderBlmMapper {
    int deleteByPrimaryKey(String orderid);

    int insert(OrderBlm record);

    int insertSelective(OrderBlm record);

    OrderBlm selectByPrimaryKey(String orderid);

    int updateByPrimaryKeySelective(OrderBlm record);

    int updateByPrimaryKey(OrderBlm record);

    List<OrderBlm> findAllByUserId_wz(String userid);//查询订单（详细信息） wz
}