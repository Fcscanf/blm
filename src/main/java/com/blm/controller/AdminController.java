package com.blm.controller;


import com.blm.bean.Admin;
import com.blm.bean.Result;
import com.blm.bean.StatusCode;
import com.blm.dao.AdminMapper;
import com.blm.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@RequestMapping("/admin")
@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;


    @ResponseBody
    @RequestMapping("/validateAdmin")
    public String login_d(Admin admin, HttpSession session) {
        admin = adminService.getAdmin(admin);//验证用户密码
        if(admin == null) {
            return "adminlogin";
        }else {
            session.setAttribute("loginname", admin.getLoginname());
            return "adminwelcome";
        }
    }
}
