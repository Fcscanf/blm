package com.blm.service.Impl;

import com.blm.bean.FoodDetail;
import com.blm.dao.FoodDetailMapper;
import com.blm.service.FoodDetailService;
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

    @Resource
    private FoodDetailMapper foodDetailMapper;
    public List<FoodDetail> find(Map<String, Object> map){
        return foodDetailMapper.find(map);
    }

    public Long getTotal(Map<String, Object> map){
        return foodDetailMapper.getTotal(map);
    }

    public int update(FoodDetail foodDetail){
        return foodDetailMapper.update(foodDetail);
    }

    public int add(FoodDetail foodDetail){
        return foodDetailMapper.add(foodDetail);
    }


    public int delete(String id){

        return foodDetailMapper.delete(id);
    }
}