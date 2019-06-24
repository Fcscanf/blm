package com.blm.controller;

import com.blm.bean.Result;
import com.blm.bean.StatusCode;
import com.blm.bean.StoreRegistTemp;
import com.blm.bean.StoreDetail;
import com.blm.bean.User;
import com.blm.service.StoreDetailService;
import com.blm.service.UserService;
import com.blm.util.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
    public StoreDetailService storeDetailService;

    @Autowired
    private HttpServletRequest request;

    @Autowired
    RedisTemplate redisTemplate;

    @Autowired
    private JwtUtil jwtUtil;
    /**
     *
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
     *
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
     * url为loginp
     * 参数为
     * phone String
     * password String
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
     * 第二次只要传一个code即可，就登陆之前的手机号在参数中传过来
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
     * 发送验证码
     * @param phone
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/sendsms/{phone}",method = RequestMethod.POST)
    public Result sendMsg(@PathVariable String phone){
        System.out.println("接受成功");
        userService.sendMsg(phone);
        return new Result(true,StatusCode.OK,"发送成功");
    }

    /**
     * 检测用户名是否存在
     * @param user
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/check",method = RequestMethod.POST)
    public Result checkUser(@RequestBody User user){
        user = userService.checkUserName(user.getUsername());
        if (user != null){
            return new Result(false,StatusCode.ERROR,"用户名已存在！");
        }
        return new Result(true,StatusCode.OK,"用户名符合要求");
    }

    /**
     * 用户直接注册为商家
     * 先将用户注册为用户但是角色字段设置为商家
     * 然后在向商家表中添加信息
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/store",method = RequestMethod.POST)
    public Result InsertStore(@RequestBody StoreRegistTemp storeRegistTemp){
        userService.insertStore(storeRegistTemp);
        return new Result(true, StatusCode.OK,"注册成功");
    }

    /**
     * 图片上传并返回oss中图片的唯一表示key
     * @param multipartFile
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/certurl",method = RequestMethod.POST)
    public Result InsertCertUrl(@RequestParam("pic") MultipartFile multipartFile){
        //将图片放进缓存
        String key = userService.uploadImage(multipartFile);
        return new Result(true,StatusCode.OK,"图片上传成功！",key);
    }

//    跳转登录界面
    @RequestMapping("/getuserlogin")
    public String getuserlogin(){
        return "userlogin";
    }

    @RequestMapping("/getstoreManage")
    public String getStoreManage(){
        return "storeManage";
    }

    @RequestMapping("/toregister")
    public String toRegister(){return "register";}


    /**
     *
     * @param user
     * @param storeDetail
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/loginstore")
    public String login(User user,StoreDetail storeDetail, HttpServletRequest request)throws Exception{
        User resultUser=userService.login(user.getUsername(),user.getPassword());
        StoreDetail resultStoreDetail=storeDetailService.findStoreDetailByUsername(user.getUsername());

        if(resultUser==null){
            request.setAttribute("user", user);
            request.setAttribute("errorMsg", "用户名或密码错误！");
            return "storelogin";
        }else{
            HttpSession session=request.getSession();
            session.setAttribute("currentUser", resultUser);
            session.setAttribute("resultStoreDetail",resultStoreDetail);
            return "storemain";
        }
    }




}


