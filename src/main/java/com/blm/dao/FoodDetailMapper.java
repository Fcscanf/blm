package com.blm.dao;

import com.blm.bean.FoodDetail;

import java.util.List;
import java.util.Map;

public interface FoodDetailMapper {
    int deleteByPrimaryKey(String foodid);

    int insert(FoodDetail record);

    int insertSelective(FoodDetail record);

    FoodDetail selectByPrimaryKey(String foodid);

    int updateByPrimaryKeySelective(FoodDetail record);

    int updateByPrimaryKey(FoodDetail record);

    public List<FoodDetail> find_zy(Map map);//根据登录的用户名查询所有商品

    public Long getTotal(Map<String, Object> map);//查询总记录数

    public int update(FoodDetail FoodDetail);//更新商品信息

    public int add(FoodDetail FoodDetail);//新增新商品

    public int delete(String foodid);//删除商品
}