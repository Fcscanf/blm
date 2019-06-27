package com.blm.service.impl;


import com.blm.bean.FoodDetail;
import com.blm.bean.FoodDetailTemp;
import com.blm.bean.OrderBlm;
import com.blm.bean.OrderBlmTemp;
import com.blm.dao.OrderBlmMapper;

import com.blm.service.OrderBlmService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @author 周宇
 * @university ycit.com
 * @creat 2019/6/22 10:59
 */
@Service("orderService")
public class OrderBlmServiceImpl implements OrderBlmService {

    /*Dao层*/
    @Resource
    private OrderBlmMapper orderBlmMapper;

    @Override
    public List<OrderBlm> find_zy(Map<String, Object> map) {
        return orderBlmMapper.find_zy(map);
    }


    @Override
    public Long getTotal_zy(Map<String, Object> map) {

        return orderBlmMapper.getTotal_zy(map);
    }

    @Override
    public List<OrderBlmTemp> findAllByUserId_wz(String userid) {
        List<OrderBlmTemp> Temps = new ArrayList<OrderBlmTemp>();
        List<OrderBlm> list = orderBlmMapper.findAllByUserId_wz(userid);
        List<FoodDetailTemp> list3 = new ArrayList<FoodDetailTemp>();
        for (OrderBlm orderBlm : list) {
            List<FoodDetail> list2 = orderBlm.getFoodDetails();
            OrderBlmTemp temp = new OrderBlmTemp();
            temp.setUsername(orderBlm.getUsername());
            temp.setDatee(orderBlm.getDatee());
            temp.setOrderid(orderBlm.getOrderid());
            for (FoodDetail foodDetail : list2) {
                FoodDetailTemp foodDetail2 = new FoodDetailTemp();
                foodDetail2.setFoodname(foodDetail.getFoodname());
                foodDetail2.setPicpath(foodDetail.getPicpath());
                foodDetail2.setPrice(foodDetail.getPrice());
                list3.add(foodDetail2);
            }
            temp.setFoodDetailTemps(list3);
            Temps.add(temp);
        }
        return  Temps;
    }
}
