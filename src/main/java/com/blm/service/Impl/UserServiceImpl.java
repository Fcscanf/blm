package com.blm.service.Impl;

import com.aliyuncs.exceptions.ClientException;
import com.blm.bean.User;
import com.blm.dao.UserMapper;
import com.blm.service.UserService;
import com.blm.util.IdWorker;
import com.blm.util.SmsUtil;
import org.apache.commons.lang.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;

@Service
//@PropertySource("classpath:jdbc.properties")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private IdWorker idWorker;

    @Autowired
    private BCryptPasswordEncoder encoder;

    @Autowired
    private RedisTemplate redisTemplate;
//
//    @Autowired
//    private AmqpTemplate amqpTemplate;
    @Autowired
    private SmsUtil smsUtil;

    private String template_code;
    private String sign_name;

    public String getTemplate_code() {
        return template_code;
    }

    public void setTemplate_code(String template_code) {
        this.template_code = template_code;
    }

    public String getSign_name() {
        return sign_name;
    }

    public void setSign_name(String sign_name) {
        this.sign_name = sign_name;
    }

    /**
     * 用户注册
     * @param user
     */
    @Override
    public void insert(User user) {
        user.setUserid(idWorker.nextId()+"");
        user.setPassword(encoder.encode(user.getPassword()));
        user.setCreatetime(new Date());
        userMapper.insert(user);
    }

    /**
     * 查询所有用户
     * @return
     */
    @Override
    public List<User> selectAllUser() {
        return userMapper.selectAllUser();
    }

    /**
     * 手机号+密码登录
     * @param phone
     * @param password
     * @return
     */
    @Override
    public User loginp(String phone, String password) {
        User user = userMapper.selectUserByPhone(phone);
        if (user != null && encoder.matches(password,user.getPassword())){
            return user;

        }
        return null;
    }

    /**
     * 发送手机验证码
     * @param phone
     */
    public void sendMsg(String phone){
        String checkcode = RandomStringUtils.randomNumeric(6);
        redisTemplate.opsForValue().set("checkcode_"+phone,checkcode, 6,TimeUnit.HOURS);
//        Map<String,String> map = new HashMap<>();
//        map.put("phone",phone);
//        map.put("checkcode",checkcode);
        //给用户发一份,
        //rabbitmq消费短息的发送先不做
//        amqpTemplate.convertAndSend("sms",map);
        try {
            smsUtil.sendSms(phone,template_code,sign_name," {\"code\":\""+ checkcode +"\"}");
        }catch (ClientException e){
            e.printStackTrace();
        }
        //调试阶段控制台显示一份
        System.out.println("验证码为："+checkcode);
    }

    @Override
    public User selectUserByPhone(String phone) {
        return userMapper.selectUserByPhone(phone);
    }

}
