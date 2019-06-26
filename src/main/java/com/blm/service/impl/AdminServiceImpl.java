package com.blm.service.impl;

import com.blm.bean.Admin;
import com.blm.bean.StoreDetail;
import com.blm.dao.AdminMapper;
import com.blm.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    @Override
    public List<Admin> getAdminList_d() {
        return null;
    }

    @Override
    public Admin getAdminInfo_d(Admin admin) {
        return null;
    }

    @Override
    public Admin getAdmin(Admin admin) {
        return this.adminMapper.getAdmin_d(admin);
    }

    @Override
    public List<StoreDetail> getAllStoreDetail_d() {
        return adminMapper.getAllStoreDetail_d();
    }
}
