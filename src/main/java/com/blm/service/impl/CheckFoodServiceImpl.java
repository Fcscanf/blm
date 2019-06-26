package com.blm.service.impl;

import com.blm.bean.CheckFood;
import com.blm.dao.CheckFoodMapper;
import com.blm.service.CheckFoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 周宇
 * @university ycit.com
 * @creat 2019/6/20 11:24
 */
@Service
public class CheckFoodServiceImpl implements CheckFoodService {
  @Autowired
  private CheckFoodMapper checkFoodMapper;

  public List<CheckFood> findAll() {
    return checkFoodMapper.findAll();
  }

  @Override
  public List<CheckFood> vaugefind(String foodtype) {
    return checkFoodMapper.vaguefind(foodtype);
  }

}
