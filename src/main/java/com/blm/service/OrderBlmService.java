package com.blm.service;


import com.blm.bean.OrderBlmTemp;

import java.util.List;


public interface OrderBlmService {


    public List<OrderBlmTemp> findAllByUserId_wz(String userid);//查询订单（详细信息） wz



}