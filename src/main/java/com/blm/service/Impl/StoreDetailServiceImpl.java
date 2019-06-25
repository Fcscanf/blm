package com.blm.service.Impl;

import com.blm.bean.StoreDetail;
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


    public List<StoreDetail> find(Map<String, Object> map){
        return storeDetailMapper.find(map);
    }

    public StoreDetail findStoreDetailByUsername(String username) {
        return null;
    }

    public Long getTotal(Map<String, Object> map){
        return storeDetailMapper.getTotal(map);
    }


    public int update(StoreDetail storeDetail){
    return storeDetailMapper.update(storeDetail);
    }

    //查询商家所有信息
    public List<StoreDetail> findAll_wz(String storeid) {
        return storeDetailMapper.findAllById_wz(storeid);
    }
}
