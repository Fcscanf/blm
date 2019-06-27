package com.blm.service;

import com.blm.bean.StoreDetail;

/**
 * @author 周宇
 * @university ycit.com
 * @creat 2019/6/20 11:21
 */
public interface StoreDetailService {

    public StoreDetail findStoreDetailByUsername(String username);//根据登录的商家，显示相应的店面信息

}

