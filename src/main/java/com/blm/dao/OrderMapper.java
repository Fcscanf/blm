package com.blm.dao;

import com.blm.bean.Order;

import java.util.List;
import java.util.Map;

public interface OrderMapper {
    int deleteByPrimaryKey(String orderid);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(String orderid);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);


    public List<Order> find(Map<String, Object> map);//查询订单

    public Long getTotal(Map<String, Object> map);//查询总的记录数

    public int delete(String orderid);//删除订单
}