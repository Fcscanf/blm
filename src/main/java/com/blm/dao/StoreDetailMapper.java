package com.blm.dao;

import com.blm.bean.StoreDetail;

import java.util.List;
import java.util.Map;

public interface StoreDetailMapper {
    int deleteByPrimaryKey(String storeid);
    int insert(StoreDetail record);
    int insertSelective(StoreDetail record);
    StoreDetail selectByPrimaryKey(String storeid);
    int updateByPrimaryKeySelective(StoreDetail record);
    int updateByPrimaryKey(StoreDetail record);



    public List<StoreDetail> find(Map<String, Object> map);//查询所有店面
    public Long getTotal(Map<String, Object> map);//查询总记录数
    public int update(StoreDetail storeDetail);//更新店面信息
}