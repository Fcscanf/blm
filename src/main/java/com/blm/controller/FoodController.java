package com.blm.controller;

import com.blm.bean.*;
import com.blm.service.CheckFoodService;
import com.blm.service.UserDetailService;
import com.blm.service.UserService;
import com.blm.util.ResponseUtil;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import javax.xml.soap.Detail;
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

    @Autowired
    private UserService userService;


    //获取所有食物信息
    @RequestMapping("/findAll")
    @ResponseBody
    public Result findAll(HttpServletResponse response) throws Exception {
        List<FoodTemp> checkFoods=checkFoodService.findAll();
//        JSONObject result=new JSONObject();
//        JSONArray jsonArray= new JSONArray(checkFoods);
//        result.put("result",jsonArray);
//        ResponseUtil.write(response, result);
//        return null;
        return new Result(true, StatusCode.OK,"查询成功",checkFoods);
    }

//    跳转到主界面
    @RequestMapping("/gethome")
    public ModelAndView rtTest(@RequestParam String phone) {
        System.out.println(phone);
        ModelAndView mav = new ModelAndView();
        User user = userService.selectUserByPhone(phone);
        mav.addObject("user",user);
        mav.setViewName("home");
        return mav;
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
