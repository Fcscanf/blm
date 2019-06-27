package com.blm.bean;

public class UserDetail {
    private String userid;

    private String address;

    public UserDetail(String userid, String address) {
        this.userid = userid;
        this.address = address;
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
}