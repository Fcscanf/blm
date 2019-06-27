package com.blm.controller;

import com.blm.bean.CheckFood;
import com.blm.service.CheckFoodService;
import com.blm.util.ResponseUtil;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * @Author Yyt
 * Date 2019/6/24
 * Description ..
 */
@Controller
@RequestMapping("/food")
public class FoodController {
    @Autowired
    private CheckFoodService checkFoodService;

    //获取所有食物信息
    @RequestMapping("/findAll")
    public String findAll(HttpServletResponse response) throws Exception {
        List<CheckFood> checkFoods=checkFoodService.findAll();
        JSONObject result=new JSONObject();
        JSONArray jsonArray= new JSONArray(checkFoods);
        result.put("result",jsonArray);
        ResponseUtil.write(response, result);
        return null;
    }

    @RequestMapping("/test")
    public String  rtTest(){
        return "home";
    }

    //模糊查询用户信息
    @ResponseBody
    @RequestMapping("/vaguefind")
    public String vaugefind(@RequestBody CheckFood checkFood, HttpServletResponse response) throws Exception {
        List<CheckFood> checkFoods=checkFoodService.vaugefind(checkFood.getFoodtype());
        JSONObject result=new JSONObject();
        JSONArray jsonArray= new JSONArray(checkFoods);
        result.put("result",jsonArray);
        ResponseUtil.write(response, result);
        return null;
    }

}
