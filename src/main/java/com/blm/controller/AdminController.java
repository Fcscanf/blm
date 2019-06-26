package com.blm.controller;


import com.blm.bean.Admin;
import com.blm.bean.Result;
import com.blm.bean.StatusCode;
import com.blm.bean.StoreDetail;
import com.blm.dao.AdminMapper;
import com.blm.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

    @ResponseBody
    @RequestMapping(value = "/adminlist")
    public Result listAdmin(Model model) {
        List<StoreDetail> list = adminService.getAllStoreDetail_d();
        return new Result(true,StatusCode.OK,"查询成功！",list);
    }

    @RequestMapping("/getAdminInfo")
    String getUserInfo(Admin admin,Model model) {
        admin = this.adminService.getAdminInfo_d(admin);
        model.addAttribute("admin",admin);
        return "adminInfo";
    }



//    界面跳转
    @RequestMapping("/getadmininfo")
    public String getadminInfo(){
        return "adminInfo";
    }

    @RequestMapping("/getadminlist")
    public String getadminlist(){
        return "adminList";
    }

    @RequestMapping("/getadminwelcome")
    public String getadminwelcome(){
        return "adminwelcome";
    }

    @RequestMapping("/getadminlogin")
    public String getadminlogin(){
        return "adminlogin";
    }
}
