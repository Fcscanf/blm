package com.blm.service.Impl;


import com.blm.bean.Order;
import com.blm.dao.OrderMapper;
import com.blm.service.OrderService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * @author 周宇
 * @university ycit.com
 * @creat 2019/6/22 10:59
 */
@Service("orderService")
public class OrderServiceImpl implements OrderService {

    /*Dao层*/
    @Resource
    private OrderMapper orderMapper;

    public List<Order> find(Map<String, Object> map){


        return orderMapper.find(map);
    }


    public Long getTotal(Map<String, Object> map){

        return orderMapper.getTotal(map);
    }


    public int delete(String orderid){
        return orderMapper.delete(orderid);

    }
    //查询订单（详细信息） wz
    @Override
    public List<Order> findAllByUserId_wz(String userid) {
        return orderMapper.findAllByUserId_wz(userid);
    }

}
