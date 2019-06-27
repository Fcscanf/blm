package com.blm.service.impl;

import com.blm.bean.Admin;
import com.blm.dao.AdminMapper;
import com.blm.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    @Override
    public Admin getAdmin(Admin admin) {

        return this.adminMapper.getAdmin_d(admin);
    }
}
