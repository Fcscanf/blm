package com.blm.service;

import com.blm.bean.OrderBlm;

import java.util.List;
import java.util.Map;

/**
 * @author 周宇
 * @university ycit.com
 * @creat 2019/6/22 10:53
 */
public interface OrderBlmService {
    public List<OrderBlm> find_zy(Map<String, Object> map);

    public Long getTotal_zy(Map<String, Object> map);

}
