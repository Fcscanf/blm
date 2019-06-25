package com.blm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * @author 周宇
 * @university ycit.com
 * @creat 2019/6/25 9:40
 */
@Controller
@RequestMapping("storeDetail")
public class StoreDetailController {

    /**
     * 商家退出登录
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/logout")
    public String logout_zy(HttpServletRequest request)throws Exception{
        request.getSession().invalidate();
        return "redirect:/storelogin.jsp";
    }


}
