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
    public List<StoreDetail> find(Map<String, Object> map);//查询所有店面


    public Long getTotal(Map<String, Object> map);//查询总记录数


    public int update(StoreDetail storeDetail);//更新店面信息

    //查询商家所有信息
    public List<StoreDetail> findAll();
}

