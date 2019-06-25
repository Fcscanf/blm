package com.blm.service.Impl;

import com.blm.bean.UserDetail;
import com.blm.dao.UserDetailMapper;
import com.blm.service.UserDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserDetailServiceImpl implements UserDetailService {
@Autowired
   private UserDetailMapper userDetailMapper;

    public int insert_wz(UserDetail userDetail) {
        return  userDetailMapper.insert(userDetail);
    }

    public int delete_wz(String id) {
        return  userDetailMapper.deleteByPrimaryKey(id);
    }



    public int update_wz(UserDetail userDetail) {
        userDetailMapper.updateByPrimaryKey(userDetail);
        return   userDetailMapper.updateByPrimaryKey(userDetail);
    }

    public UserDetail select_wz(String id) {
        return  userDetailMapper.selectByPrimaryKey(id);
    }
}
