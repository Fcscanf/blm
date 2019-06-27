package com.blm.controller;

import com.blm.bean.Result;
import com.blm.bean.StatusCode;
import com.blm.bean.UserDetail;
import com.blm.service.UserDetailService;
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

@Controller
@RequestMapping("/userdetail")
public class UserDetailController {
    @Autowired
    private UserDetailService userDetailService;

    @ResponseBody
    @RequestMapping("/insert")
    //添加用户收货地址,传入userid,phone,address,sex,
    public Result insert_wz(@RequestBody UserDetail userDetail){
        userDetailService.insert_wz(userDetail);
        return new Result(true, StatusCode.OK,"添加成功");
    }
    //删除用户收货地址    传入id(主键)
    @ResponseBody
    @RequestMapping("/delete")
    public Result delete_wz(@RequestBody UserDetail userDetail){
        userDetailService.delete_wz(userDetail.getId());
        return new Result(true, StatusCode.OK,"删除成功");
    }

   //修改用户收货地址   在前台先获取之前的地址，再传入phone,address,sex,
    @ResponseBody
    @RequestMapping("/update")
    public Result update_wz(@RequestBody UserDetail userDetail){
        userDetailService.update_wz(userDetail);
        return new Result(true, StatusCode.OK,"修改成功");
    }

    //查找用户收货地址 传入userid
    @ResponseBody
    @RequestMapping("/select")
    public Result select_wz(@RequestBody UserDetail userDetail,HttpServletResponse response) throws Exception {
        List<UserDetail> userDetails = userDetailService.finduser_wz(userDetail.getUserid());
        return new Result(true, StatusCode.OK,"查询成功",userDetails);
    }
    }








