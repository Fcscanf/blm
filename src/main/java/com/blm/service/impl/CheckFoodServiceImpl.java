package com.blm.service.impl;

import com.blm.bean.CheckFood;
import com.blm.bean.FoodTemp;
import com.blm.dao.CheckFoodMapper;
import com.blm.service.CheckFoodService;
import com.blm.util.OSSClientUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author 周宇
 * @university ycit.com
 * @creat 2019/6/20 11:24
 */
@Service
public class CheckFoodServiceImpl implements CheckFoodService {

  @Autowired
  private OSSClientUtil ossClientUtil;

  @Autowired
  private CheckFoodMapper checkFoodMapper;

  public List<FoodTemp> findAll() {
    List<FoodTemp> foodTemps = new ArrayList<FoodTemp>();
    List<CheckFood> list = checkFoodMapper.findAll();
    for (CheckFood checkFood:list){
      FoodTemp foodTemp = new FoodTemp();
      foodTemp.setFoodname(checkFood.getFoodDetail().getFoodname());
      foodTemp.setFoodtype(checkFood.getFoodtype());
      foodTemp.setStorename(checkFood.getStoreDetail().getStorename());
      foodTemp.setPrice(checkFood.getFoodDetail().getPrice());
      foodTemp.setDescription(checkFood.getFoodDetail().getDescription());
      foodTemp.setPicpath(ossClientUtil.getImgUrl(checkFood.getFoodDetail().getPicpath()));
      foodTemps.add(foodTemp);
    }
    return foodTemps;

  }

  @Override
  public List<CheckFood> vaugefind(String foodtype) {

    List<CheckFood> list = checkFoodMapper.vaguefind(foodtype);
    for (CheckFood checkFood:list){
      checkFood.getFoodDetail().setPicpath(ossClientUtil.getImgUrl(checkFood.getFoodDetail().getPicpath()));
    }
    return list;
  }

}
