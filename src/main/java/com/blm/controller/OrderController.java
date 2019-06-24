package com.blm.controller;

import com.blm.bean.Order;
import com.blm.bean.PageBean;
import com.blm.service.OrderService;
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
public class OrderController {
    @Resource
    private OrderService orderService;

    /**
     * @param page
     * @param rows
     * @param order
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping("/list")
    public String List(@RequestParam(value = "page", required = false) String page, @RequestParam(value = "rows", required = false) String rows, Order order, HttpServletResponse response) throws Exception {
        PageBean pageBean = new PageBean(Integer.parseInt(page), Integer.parseInt(rows));
        Map<String, Object> map = new HashMap<String, Object>();

        map.put("username", StringUtil.formatLike(order.getUsername()));//模糊查询时使用
        map.put("start", pageBean.getStart());
        map.put("size", pageBean.getPagesize());
        List<Order> orderList = orderService.find(map);//根据用户名查询

        Long total = orderService.getTotal(map);//传入分页的参数
        JSONObject result = new JSONObject();
        JSONArray jsonArray = new JSONArray(orderList);
        result.put("rows", jsonArray);
        result.put("total", total);
        ResponseUtil.write(response, result);
        return null;
    }


    @RequestMapping("/delete")
    public String delete(@RequestParam(value = "ids") String ids, HttpServletResponse response) throws Exception {
        String[] idsStr = ids.split(",");//将前端获取并且返回的String类型的ids变为数组形式
        for (int i = 0; i < idsStr.length; i++) {
            orderService.delete(Integer.parseInt(idsStr[i]) + "");
            //先获取int类型的id，因为数据库设计为String类型，在转为String类型
        }
        JSONObject result = new JSONObject();
        result.put("success", true);
        ResponseUtil.write(response, result);
        return null;

    }


}
