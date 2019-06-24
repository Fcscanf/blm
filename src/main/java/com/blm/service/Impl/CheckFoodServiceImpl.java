package com.blm.service.Impl;

import com.blm.bean.CheckFood;
import com.blm.dao.CheckFoodMapper;
import com.blm.service.CheckFoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CheckFoodServiceImpl implements CheckFoodService {
@Autowired
  private CheckFoodMapper checkFoodMapper;
    @Override
    public List<CheckFood> findAll() {
      return checkFoodMapper.findAll();
    }

  @Override
  public List<CheckFood> vaugefind(String foodName) {
    return checkFoodMapper.vaguefind(foodName);
}


}
