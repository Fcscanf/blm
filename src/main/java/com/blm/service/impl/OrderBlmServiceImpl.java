package com.blm.service.impl;


import com.blm.bean.OrderBlm;
import com.blm.dao.OrderBlmMapper;

import com.blm.service.OrderBlmService;
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
    public int delete_zy(String orderid) {
        return orderBlmMapper.delete_zy(orderid);

    }

}
