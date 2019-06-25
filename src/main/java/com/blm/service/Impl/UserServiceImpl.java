package com.blm.service.Impl;

import com.aliyuncs.exceptions.ClientException;
import com.blm.bean.StoreDetail;
import com.blm.bean.StoreRegistTemp;
import com.blm.bean.User;
import com.blm.dao.StoreDetailMapper;
import com.blm.dao.UserMapper;
import com.blm.service.UserService;
import com.blm.util.IdWorker;
import com.blm.util.OSSClientUtil;
import com.blm.util.SmsUtil;
import org.apache.commons.lang.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

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
//    短信工具类
    @Autowired
    private SmsUtil smsUtil;

    @Autowired
    private StoreDetailMapper storeDetailMapper;

    @Autowired
    private OSSClientUtil ossClientUtil;

    private String template_code_regist;
    private String sign_name;
    private String template_code_login;

    public String getTemplate_code_regist() {
        return template_code_regist;
    }

    public void setTemplate_code_regist(String template_code_regist) {
        this.template_code_regist = template_code_regist;
    }

    public String getTemplate_code_login() {
        return template_code_login;
    }

    public void setTemplate_code_login(String template_code_login) {
        this.template_code_login = template_code_login;
    }

    public String getSign_name() {
        return sign_name;
    }

    public void setSign_name(String sign_name) {
        this.sign_name = sign_name;
    }

//    public String getTemplate_code_login() {
//        return template_code_login;
//    }
//
//    public void setTemplate_code_login(String template_code_login) {
//        this.template_code_login = template_code_login;
//    }
//
//    public String getTemplate_code_regist() {
//        return template_code_regist;
//    }
//
//    public void setTemplate_code_regist(String template_code_regist) {
//        this.template_code_regist = template_code_regist;
//    }


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
    @Override
    public void sendMsg(String phone,String code1){
        String checkcode = RandomStringUtils.randomNumeric(6);
        redisTemplate.opsForValue().set("checkcode_"+phone,checkcode, 6,TimeUnit.HOURS);
//        Map<String,String> map = new HashMap<>();
//        map.put("phone",phone);
//        map.put("checkcode",checkcode);
        //给用户发一份,
        //rabbitmq消费短息的发送先不做
//        amqpTemplate.convertAndSend("sms",map);
        try {
            if ("1".equals(code1)){
                smsUtil.sendSms(phone,template_code_login,sign_name," {\"code\":\""+ checkcode +"\"}");
            }
            if ("0".equals(code1)){
                smsUtil.sendSms(phone,template_code_regist,sign_name," {\"code\":\""+ checkcode +"\"}");
            }
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

    @Override
    public User checkUserName(String username) {
        User user = userMapper.selectUserByUsernamek(username);
        return user;
    }

//    商家注册信息的插入
    @Override
    public void insertStore(StoreRegistTemp storeRegistTemp) {
        User user = storeRegistTemp.getUser();
        StoreDetail storeDetail = storeRegistTemp.getStoreDetail();
        String key = storeRegistTemp.getKey();
        String id = idWorker.nextId()+"";
        user.setUserid(id);
        user.setCreatetime(new Date());
        user.setRoleid("2");
        user.setIsvalid(1);
        userMapper.insert(user);
        storeDetail.setStoreid(idWorker.nextId()+"");
        storeDetail.setCerturl(key);
        storeDetail.setUserid(id);
        storeDetail.setShopfronturl("1.jpg");
        storeDetail.setIsvalid(1);
        storeDetailMapper.insert(storeDetail);
    }


    //将图片上传到服务器并返回可以拿到值的key
    @Override
    public String uploadImage(MultipartFile file){
//根据id查询用户
//        User user = userMapper.selectByPrimaryKey(id);
//对上传文件进行Base64编码
//        String s = null;
//        try {
//            s = Base64.encode(file.getBytes());
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
////拼接DataURL数据头
//        String dataUrl = new String("data:image/jpg;base64,"+s);
//        System.out.println(dataUrl);
////        user.setStaffPhoto(dataUrl);
////保存图片信息
////        userDao.save(user);
//        StoreDetail storeDetail = new StoreDetail();
//        storeDetail.setUserid("1");
//        storeDetail.setStoreid("4");
//        storeDetailMapper.updateByPrimaryKeySelective(storeDetail);
//        return dataUrl;

        if (file == null || file.getSize()<=0){
            throw new RuntimeException("图片不能为空");
        }
        return ossClientUtil.uploadImg2Oss(file);

//        商家注册（图片上传）最终逻辑
//        用户店家上传图片，返回图片在oos的存储地址，
//        商家注册的时候，将接收到的key一起发过来


    }


    @Override
    public User selectUserByUsername(String username){
        return userMapper.selectUserByUsername(username);
    }

    /**
     * 商家用户名+密码登录
     * @param username
     * @param password
     * @return
     */
    @Override
    public User login(String username,String  password){
        User user = userMapper.selectUserByUsername(username);
        if (user != null && encoder.matches(password,user.getPassword())){
            return user;

        }
        return null;
    }


}
