package com.blm.service;

import com.blm.bean.Admin;
import com.blm.bean.StoreDetail;

import java.util.List;

public interface AdminService {

    public List<Admin> getAdminList_d();

    public Admin getAdminInfo_d(Admin admin);

    public Admin getAdmin(Admin admin);

    public List<StoreDetail> getAllStoreDetail_d();

}
