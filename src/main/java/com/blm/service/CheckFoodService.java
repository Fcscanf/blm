package com.blm.service;


import com.blm.bean.CheckFood;
import com.blm.bean.FoodTemp;

import java.util.List;

public interface CheckFoodService {

    public List<FoodTemp> findAll();

    public List<CheckFood> vaugefind(String foodName);

}
