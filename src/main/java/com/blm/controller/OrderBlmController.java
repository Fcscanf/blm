package com.blm.controller;

import com.blm.bean.OrderBlm;
import com.blm.bean.PageBean;
import com.blm.service.OrderBlmService;
import com.blm.util.ResponseUtil;
import com.blm.util.StringUtil;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author 周宇
 * @university ycit.com
 * @creat 2019/6/22 10:53
 */
@Controller
@RequestMapping("/order")
public class OrderBlmController {
    @Resource
    private OrderBlmService orderService;

    /**订单显示并查询，不可以删除订单
     * @param page
     * @param rows
     * @param orderBlm
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping("/list")
    public String List_zy(@RequestParam(value = "page", required = false) String page, @RequestParam(value = "rows", required = false) String rows, OrderBlm orderBlm, HttpServletResponse response) throws Exception {
        PageBean pageBean = new PageBean(Integer.parseInt(page), Integer.parseInt(rows));
        Map<String, Object> map = new HashMap<String, Object>();

        map.put("username", StringUtil.formatLike(orderBlm.getUsername()));//模糊查询时使用
        map.put("start", pageBean.getStart());
        map.put("size", pageBean.getPagesize());
        List<OrderBlm> orderList = orderService.find_zy(map);//根据用户名查询

        Long total = orderService.getTotal_zy(map);//传入分页的参数
        JSONObject result = new JSONObject();
        JSONArray jsonArray = new JSONArray(orderList);
        result.put("rows", jsonArray);
        result.put("total", total);
        ResponseUtil.write(response, result);
        return null;
    }
}
