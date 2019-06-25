package com.blm.service.Impl;

import com.blm.bean.FoodDetail;
import com.blm.bean.StoreDetail;
import com.blm.dao.StoreDetailMapper;
import com.blm.service.StoreDetailService;
import com.blm.util.OSSClientUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.xml.soap.Detail;
import java.util.List;

/**
 * @author 周宇
 * @university ycit.com
 * @creat 2019/6/20 11:24
 */
@Service("storeDetailService")
public class StoreDetailServiceImpl implements StoreDetailService {
    @Resource
    private StoreDetailMapper storeDetailMapper;


    @Autowired
    private OSSClientUtil ossClientUtil;

    public StoreDetail findStoreDetailByUsername(String username) {
        StoreDetail list = storeDetailMapper.findStoreDetailByUsername(username);
            list.setShopfronturl(ossClientUtil.getImgUrl(list.getShopfronturl()));
        return list;
        /* return storeDetailMapper.findStoreDetailByUsername(username);*/
    }
}
