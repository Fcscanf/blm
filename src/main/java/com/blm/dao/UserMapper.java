package com.blm.dao;

import com.blm.bean.User;

import java.util.List;

public interface UserMapper {
//    注解开发
//    int deleteByPrimaryKey(String userid);

//    @Insert("insert into user(userid, username, password, phone, createtime, roleid, isvalid) values(#{userid},#{username},#{password},#{phone},#{createtime},#{roleid},#{isvalid})")
//    int insert(User user);

//    @Select("<script>select * from user <where><if test='username != null'>and username = #{username}</if>" +
//            "<if test='username != null'>and username = #{username}</if>" +
//            "<if test='username != null'>and username = #{username}</if>" +
//            "<if test='username != null'>and username = #{username}</if>" +
//            "<if test='username != null'>and username = #{username}</if>" +
//            "<if test='username != null'>and username = #{username}</if>" +
//            "<if test='username != null'>and username = #{username}</if></where></script>")
//    List<User> selectSelective(User user);

//    @Select("select * from User")
//    public List<User> selectAllUser();

//    @Select("select * from User where phone = #{phone}")
//    public User selectUserByPhone(String phone);

    int deleteByPrimaryKey(String userid);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String userid);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    public List<User> selectAllUser();

    public User selectUserByPhone(String phone);

<<<<<<< HEAD


=======
    public User selectUserByUsername(String username);//商家登录(查询商家用户名)

    public User selectUserByUsernamek(String username);
>>>>>>> 1558498d30fb8add4e9771c827f2385fa283f8ac
}