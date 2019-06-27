package com.blm.service;


import com.blm.bean.CheckFood;

import java.util.List;

public interface CheckFoodService {

    public List<CheckFood> findAll();

    public List<CheckFood> vaugefind(String foodName);

}
