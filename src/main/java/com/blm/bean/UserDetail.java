package com.blm.bean;

public class UserDetail {
    private String id;

    private String userid;

    private String sex;

    private String address;

    private String phone;

    public UserDetail(String id, String userid, String sex, String address, String phone) {
        this.id = id;
        this.userid = userid;
        this.sex = sex;
        this.address = address;
        this.phone = phone;
    }

    public UserDetail() {
        super();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }
}