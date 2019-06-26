package com.blm.service.impl;

import com.blm.bean.UserDetail;
import com.blm.dao.UserDetailMapper;
import com.blm.service.UserDetailService;
import com.blm.util.IdWorker;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserDetailServiceImpl implements UserDetailService {
@Autowired
   private UserDetailMapper userDetailMapper;

@Autowired
private IdWorker idWorker;

    @Override
    public int insert_wz(UserDetail userDetail) {
      //id自增
        String a=idWorker.nextId()+"";
        userDetail.setId(a);
        userDetailMapper.insert(userDetail);
        return 0 ;
    }

    @Override
    public int delete_wz(String id) {
        return  userDetailMapper.deleteByPrimaryKey(id);
    }



    public int update_wz(UserDetail userDetail) {

        return   userDetailMapper.updateByPrimaryKey(userDetail);
    }

    @Override
    public List<UserDetail> finduser_wz(String userid) {
        return userDetailMapper.finduser_wz(userid);
    }


}
