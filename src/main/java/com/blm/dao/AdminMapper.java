package com.blm.dao;

import com.blm.bean.Admin;

import java.util.List;

public interface AdminMapper {
    int deleteByPrimaryKey(String adminid);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(String adminid);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);

    public List<Admin> getAllAdmin_d();

    public Admin getAdmin_d(Admin admin);
}