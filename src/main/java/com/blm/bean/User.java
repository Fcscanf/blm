package com.blm.bean;

import java.util.Date;

public class User {
    private String userid;

    private String username;

    private String password;

    private String phone;

    private Date createtime;

    private String roleid;

    private Integer isvalid;

    public User(String userid, String username, String password, String phone, Date createtime, String roleid, Integer isvalid) {
        this.userid = userid;
        this.username = username;
        this.password = password;
        this.phone = phone;
        this.createtime = createtime;
        this.roleid = roleid;
        this.isvalid = isvalid;
    }

    public User() {
        super();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getRoleid() {
        return roleid;
    }

    public void setRoleid(String roleid) {
        this.roleid = roleid == null ? null : roleid.trim();
    }

    public Integer getIsvalid() {
        return isvalid;
    }

    public void setIsvalid(Integer isvalid) {
        this.isvalid = isvalid;
    }
}