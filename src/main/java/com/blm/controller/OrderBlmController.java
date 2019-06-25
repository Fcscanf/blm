package com.blm.controller;


import com.blm.bean.OrderBlm;
import com.blm.service.OrderBlmService;
import com.blm.util.ResponseUtil;
import org.json.JSONArray;
import org.json.JSONObject;
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




    //查询订单（详细信息） wz
    @ResponseBody
    @RequestMapping("/findallbyid")
    public String findAllById_wz(@RequestBody OrderBlm orderblm, HttpServletResponse response) throws Exception {
        List<OrderBlm> storeDetails = orderBlmService.findAllByUserId_wz(orderblm.getUserid());
        JSONObject result=new JSONObject();
        JSONArray jsonArray= new JSONArray(storeDetails);
        result.put("result",jsonArray);
        ResponseUtil.write(response, result);
        return  null;
    }
}
