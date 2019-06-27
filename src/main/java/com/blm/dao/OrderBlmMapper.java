package com.blm.dao;

import com.blm.bean.OrderBlm;

import java.util.List;
import java.util.Map;

public interface OrderBlmMapper {
    int deleteByPrimaryKey(String orderid);

    int insert(OrderBlm record);

    int insertSelective(OrderBlm record);

    OrderBlm selectByPrimaryKey(String orderid);

    int updateByPrimaryKeySelective(OrderBlm record);

    int updateByPrimaryKey(OrderBlm record);


    public List<OrderBlm> find_zy(Map<String, Object> map);//查询订单

    public Long getTotal_zy(Map<String, Object> map);//查询总的记录数

    public List<OrderBlm> findAllByUserId_wz(String userid);

}