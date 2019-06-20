package com.blm.bean;

public class Role {
    private String roleid;

    private String rolename;

    public Role(String roleid, String rolename) {
        this.roleid = roleid;
        this.rolename = rolename;
    }

    public Role() {
        super();
    }

    public String getRoleid() {
        return roleid;
    }

    public void setRoleid(String roleid) {
        this.roleid = roleid == null ? null : roleid.trim();
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename == null ? null : rolename.trim();
    }
}