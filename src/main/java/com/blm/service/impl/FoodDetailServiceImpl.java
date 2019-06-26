package com.blm.service.impl;

import com.blm.bean.FoodDetail;
import com.blm.dao.FoodDetailMapper;
import com.blm.service.FoodDetailService;
import com.blm.util.IdWorker;
import com.blm.util.OSSClientUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * @author 周宇
 * @university ycit.com
 * @creat 2019/6/21 14:57
 */
@Service("foodDetailService")
public class FoodDetailServiceImpl implements FoodDetailService {

    @Autowired
    private OSSClientUtil ossClientUtil;

    @Autowired
    private IdWorker idWorker;

    @Resource
    private FoodDetailMapper foodDetailMapper;

    @Override
    public List<FoodDetail> find_zy(Map map){
        List<FoodDetail> list = foodDetailMapper.find_zy(map);
        for (FoodDetail foodDetail:list){
            foodDetail.setPicpath(ossClientUtil.getImgUrl(foodDetail.getPicpath()));
        }
        return list;
    }

    @Override
    public Long getTotal(Map<String, Object> map){
        return foodDetailMapper.getTotal(map);
    }

    @Override
    public int update(FoodDetail foodDetail){
        return foodDetailMapper.update(foodDetail);
    }

    @Override
    public int add(FoodDetail foodDetail){
        foodDetail.setFoodid(idWorker.nextId()+"");

        foodDetail.setIsvalid(1);
        return foodDetailMapper.add(foodDetail);
    }


    @Override
    public int delete(String id){

        return foodDetailMapper.delete(id);
    }
}
