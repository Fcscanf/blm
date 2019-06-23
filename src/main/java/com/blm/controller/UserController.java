package com.blm.controller;

import com.blm.bean.Result;
import com.blm.bean.StatusCode;
import com.blm.bean.User;
import com.blm.service.UserService;
import com.blm.util.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user")
@CrossOrigin
public class UserController {

    @Autowired
    public UserService userService;

    @Autowired
    private HttpServletRequest request;

    @Autowired
    RedisTemplate redisTemplate;

    @Autowired
    private JwtUtil jwtUtil;


    /**
     *  用户注册，用户名、手机号码校验后的插入数据
     * @param user
     * @return
     */
    @ResponseBody
    @RequestMapping(method = RequestMethod.POST)
    public Result insertUser(@RequestBody User user){
        userService.insert(user);
        return new Result(true, StatusCode.OK,"添加成功");
    }

    /**
     *  显示所有用户信息
     * @return
     */
    @ResponseBody
    @RequestMapping(method = RequestMethod.GET)
    public Result selectAlltUser(){
        String token = (String) request.getAttribute("claims_user");
        if (token == null || "".equals(token)){
            return new Result(false,StatusCode.ACCESSERROR,"请先登录");
        }
        List<User> userList = userService.selectAllUser();
        return new Result(true, StatusCode.OK,"查询成功",userList);
    }

    /**
     * 手机号+密码登录
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/loginp",method = RequestMethod.POST)
    public Result loginByPassword(@RequestBody User user){

        user = userService.loginp(user.getPhone(),user.getPassword());
        if (user == null){
            return new Result(false,StatusCode.ERROR,"账号或者密码错误！");
        }
        //JWT生成key,
        return new Result(true,StatusCode.OK,"登陆成功");
    }

    /**
     * 手机号+验证码登录
     * @param code
     * @param user
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/login/{code}",method = RequestMethod.POST)
    public Result loginByCode(@PathVariable String code,@RequestBody User user){
        String checkcode  = (String) redisTemplate.opsForValue().get("checkcode_" + user.getPhone());
        if (checkcode.isEmpty()){
            return new Result(false, StatusCode.ERROR,"请先获取手机验证码！");
        }else if (!checkcode.equals(code)){
            return new Result(false,StatusCode.ERROR,"请输入正确的手机验证码");
        }
        user = userService.selectUserByPhone(user.getPhone());
        String token = jwtUtil.createJWT(user.getUserid(),user.getPhone(),"user");
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("token",token);
        map.put("roles","user");
        return new Result(true,StatusCode.OK,"登陆成功",map);

    }

    /**
     * 注册和登录的验证码发送都应用此方法——辨别码
     * 发送验证码/sendsms/{phone}/1就是登录直接发送验证码
     * 发送验证码/sendsms/{phone}/0就是注册——先检验手机号是否已经存在，若已经存在返回false，正确返回true并发送验证码
     *
     * @param phone
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/sendsms/{phone}/{code}",method = RequestMethod.POST)
    public Result sendMsg(@PathVariable String phone,@PathVariable String code){
        if ("1".equals(code)){
            userService.sendMsg(phone);
            return new Result(true,StatusCode.OK,"发送成功");
        }
        if ("0".equals(code)){
            User user = userService.selectUserByPhone(phone);
            if (user != null){
                return new Result(false,StatusCode.ERROR,"手机号已经注册！");
            }
        }
        userService.sendMsg(phone);
        return new Result(true,StatusCode.OK,"发送成功");
    }


//    检测用户名是否存在
    @ResponseBody
    @RequestMapping(value = "/check",method = RequestMethod.POST)
    public Result checkUser(@RequestBody User user){
        user = userService.checkUserName(user.getUsername());
        if (user != null){
            return new Result(false,StatusCode.ERROR,"用户名已存在！");
        }
        return new Result(true,StatusCode.OK,"用户名符合要求");
    }

//    跳转登录界面
    @RequestMapping("/getuserlogin")
    public String getuserlogin(){
        return "userlogin";
    }

//    跳转storeManage界面
    @RequestMapping("/getstoreManage")
    public String getStoreManage(){
        return "storeManage";
    }

//    跳转注册界面
    @RequestMapping("/toregister")
    public String toRegister(){return "register";}




}
