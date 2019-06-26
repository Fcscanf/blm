package com.blm.controller;

import com.blm.bean.FoodDetail;
import com.blm.bean.PageBean;
import com.blm.service.FoodDetailService;
import com.blm.util.ResponseUtil;
import com.blm.util.StringUtil;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 用户Controller层
 *
 * @author Administrator
 */
@Controller
@RequestMapping("foodDetail")
public class FoodDetailController {
    @Resource
    private FoodDetailService foodDetailService;

    @RequestMapping("/foodManage")
    public String showIndex() {
        return "foodManage"; //逻辑视图
    }

    @RequestMapping("/customerOrder")
    public String showCustomerOrder() {
        return "customerOrder"; //逻辑视图
    }

    /**
     * 商品展示(连表查询)
     * @param page
     * @param rows
     * @param foodDetail
     * @param response
     * @param session
     * @return
     * @throws Exception
     */

    @RequestMapping("/list")
    public String list(@RequestParam(value = "page", required = false) String page, @RequestParam(value = "rows", required = false) String rows, FoodDetail foodDetail, HttpServletResponse response,HttpSession session) throws Exception {
        PageBean pageBean = new PageBean(Integer.parseInt(page), Integer.parseInt(rows));
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("foodname", StringUtil.formatLike(foodDetail.getFoodname()));//模糊查询时使用
        map.put("start", pageBean.getStart());
        map.put("size", pageBean.getPagesize());
        map.put("username",session.getAttribute("currentUser"));

        List<FoodDetail> foodList =foodDetailService.find_zy(map);
        Long total = foodDetailService.getTotal(map);
        JSONObject result = new JSONObject();
        JSONArray jsonArray = new JSONArray(foodList);
        result.put("rows", jsonArray);
        result.put("total", total);
        ResponseUtil.write(response, result);
        return null;
    }


    /**
     * 添加或者修改商品属性
     *
     * @param foodDetail
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping("/save")
    public String save(FoodDetail foodDetail, HttpServletResponse response) throws Exception {
        int resultTotal = 0; // 操作的记录条数
        if (foodDetail.getFoodid() == null) {
            resultTotal = foodDetailService.add(foodDetail);
        } else {
            resultTotal = foodDetailService.update(foodDetail);
        }
        JSONObject result = new JSONObject();
        if (resultTotal > 0) {
            result.put("success", true);
        } else {
            result.put("success", false);
        }
        ResponseUtil.write(response, result);
        return null;
    }


    /**
     * 删除商品
     *
     * @param ids
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping("/delete")
    public String delete(@RequestParam(value = "ids") String ids, HttpServletResponse response) throws Exception {
        String[] idsStr = ids.split(",");
        for (int i = 0; i < idsStr.length; i++) {
            foodDetailService.delete(Integer.parseInt(idsStr[i]) + "");//转为字符串形式
        }
        JSONObject result = new JSONObject();
        result.put("success", true);
        ResponseUtil.write(response, result);
        return null;
    }




}
