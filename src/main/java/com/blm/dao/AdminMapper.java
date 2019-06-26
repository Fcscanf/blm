package com.blm.dao;

import com.blm.bean.Admin;
import com.blm.bean.StoreDetail;

import java.util.List;

public interface AdminMapper {
    int deleteByPrimaryKey(String adminid);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(String adminid);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);

    public List<Admin> getAdminList_d();

    public Admin getAdmin_d(Admin admin);

    public Admin getAdminInfo_d(Admin admin);

    public List<StoreDetail> getAllStoreDetail_d();
}