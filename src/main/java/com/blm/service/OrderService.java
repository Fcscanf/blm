package com.blm.service;

import com.blm.bean.Order;

import java.util.List;
import java.util.Map;

/**
 * @author 周宇
 * @university ycit.com
 * @creat 2019/6/22 10:53
 */
public interface OrderService {
    public List<Order> find(Map<String, Object> map);

    public Long getTotal(Map<String, Object> map);

    public int delete(String orderid);//删除订单

    public List<Order> findAllByUserId_wz(String userid);//查询订单（详细信息） wz
}