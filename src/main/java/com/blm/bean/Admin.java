package com.blm.bean;

public class Admin {
    private String adminid;

    private String loginname;

    private String password;

    private String isvalid;

    public Admin(String adminid, String loginname, String password, String isvalid) {
        this.adminid = adminid;
        this.loginname = loginname;
        this.password = password;
        this.isvalid = isvalid;
    }

    public Admin() {
        super();
    }

    public String getAdminid() {
        return adminid;
    }

    public void setAdminid(String adminid) {
        this.adminid = adminid == null ? null : adminid.trim();
    }

    public String getLoginname() {
        return loginname;
    }

    public void setLoginname(String loginname) {
        this.loginname = loginname == null ? null : loginname.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getIsvalid() {
        return isvalid;
    }

    public void setIsvalid(String isvalid) {
        this.isvalid = isvalid == null ? null : isvalid.trim();
    }
}