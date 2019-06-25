package com.blm.dao;

import com.blm.bean.CheckFood;
import org.apache.ibatis.annotations.Param;


import java.util.List;

public interface CheckFoodMapper {
    int deleteByPrimaryKey(String foodid);

    int insert(CheckFood record);

    int insertSelective(CheckFood record);

    CheckFood selectByPrimaryKey(String foodid);

    int updateByPrimaryKeySelective(CheckFood record);

    int updateByPrimaryKey(CheckFood record);

    List<CheckFood> findAll();

    List<CheckFood> vaguefind(@Param("foodtype") String foodtype);
}