package com.blm.service.Impl;

import com.blm.bean.StoreDetail;
import com.blm.bean.User;
import com.blm.dao.StoreDetailMapper;
import com.blm.service.StoreDetailService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * @author 周宇
 * @university ycit.com
 * @creat 2019/6/20 11:24
 */
@Service("storeDetailService")
public class StoreDetailServiceImpl implements StoreDetailService {
    @Resource
    private StoreDetailMapper storeDetailMapper;

    public StoreDetail findStoreDetailByUsername(String username){
        return storeDetailMapper.findStoreDetailByUsername(username);
    }
}
