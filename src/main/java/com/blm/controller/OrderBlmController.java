package com.blm.controller;


import com.blm.bean.OrderBlm;
import com.blm.bean.OrderBlmTemp;
import com.blm.bean.Result;
import com.blm.bean.StatusCode;
import com.blm.service.OrderBlmService;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/order")
public class OrderBlmController {
    @Resource
    private OrderBlmService orderBlmService;

    //查询用户所有的订单信息 传入用户ID
    @ResponseBody
    @RequestMapping("/findallbyid")
    public Result findAllById_wz(@RequestBody OrderBlm orderblm, HttpServletResponse response) throws Exception {
        List<OrderBlmTemp> orderBlmTemps = orderBlmService.findAllByUserId_wz(orderblm.getUserid());
        return new Result(true, StatusCode.OK,"查询成功", orderBlmTemps);
    }
}
