package com.blm.controller;

import com.blm.bean.UserDetail;
import com.blm.service.UserDetailService;
import org.apache.commons.collections.bag.SynchronizedSortedBag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class UserDetailController {
    @Autowired
    private UserDetailService userDetailService;

    @ResponseBody
    @RequestMapping("/insert")
    //添加地址方法
    public String insert_wz(@RequestBody UserDetail userDetail){
        userDetailService.insert_wz(userDetail);
        return null;
    }
    //删除地址方法
    @ResponseBody
    @RequestMapping("/delete")
    public String delete_wz(@RequestBody UserDetail userDetail){
        userDetailService.delete_wz(userDetail.getUserid());
        return null;
    }

   //修改地址方法
    @ResponseBody
    @RequestMapping("/update")
    public String update_wz(@RequestBody UserDetail userDetail){
        userDetailService.update_wz(userDetail);
        return null;
    }

    //查找地址
    @ResponseBody
    @RequestMapping("/select")
    public String select_wz(@RequestBody UserDetail userDetail, HttpServletResponse response) {
        UserDetail userDetails = userDetailService.select_wz(userDetail.getUserid());
        System.out.println(userDetail);
        return null;
    }
    }








