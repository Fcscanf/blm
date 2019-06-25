package com.blm.bean;

public class UserDetail {
    private String userid;

    private String address;

    private String addresss;

    private String sex;

    private String phonee;

    public UserDetail(String userid, String address, String addresss, String sex, String phonee) {
        this.userid = userid;
        this.address = address;
        this.addresss = addresss;
        this.sex = sex;
        this.phonee = phonee;
    }

    public UserDetail() {
        super();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getAddresss() {
        return addresss;
    }

    public void setAddresss(String addresss) {
        this.addresss = addresss == null ? null : addresss.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getPhonee() {
        return phonee;
    }

    public void setPhonee(String phonee) {
        this.phonee = phonee == null ? null : phonee.trim();
    }
}