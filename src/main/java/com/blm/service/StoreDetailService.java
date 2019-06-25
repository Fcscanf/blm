package com.blm.service;

import com.blm.bean.StoreDetail;

import java.util.List;
import java.util.Map;

/**
 * @author 周宇
 * @university ycit.com
 * @creat 2019/6/20 11:21
 */
public interface StoreDetailService {

    public StoreDetail findStoreDetailByUsername(String username);//根据登录的商家，显示相应的店面信息

    public Long getTotal(Map<String, Object> map);//查询总记录数


    public int update(StoreDetail storeDetail);//更新店面信息

    //查询商家所有信息
    public List<StoreDetail> findAll(String storeid);

//    周宇未完成方法
    List<StoreDetail> find(Map<String, Object> map);



}

