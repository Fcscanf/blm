package com.blm.service;

import com.blm.bean.FoodDetail;

import java.util.List;
import java.util.Map;

/**
 * @author 周宇
 * @university ycit.com
 * @creat 2019/6/21 14:55
 */
public interface FoodDetailService {
    public List<FoodDetail> find(Map<String, Object> map);//查询所有商品

    public Long getTotal(Map<String, Object> map);//查询总记录数

    public int update(FoodDetail FoodDetail);//更新商品信息

    public int add(FoodDetail FoodDetail);//新增新商品

    public int delete(String id);//删除商品
}
