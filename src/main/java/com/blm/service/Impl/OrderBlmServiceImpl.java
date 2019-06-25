package com.blm.service.Impl;

import com.blm.bean.OrderBlm;
import com.blm.dao.OrderBlmMapper;
import com.blm.service.OrderBlmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class OrderBlmServiceImpl implements OrderBlmService {
    @Autowired
    private OrderBlmMapper orderBlmMapper;

    public List<OrderBlm> findAllByUserId_wz(String userid) {
        return orderBlmMapper.findAllByUserId_wz(userid);
    }
}
