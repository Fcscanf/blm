package com.blm.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;


import com.blm.bean.PageBean;
import com.blm.bean.StoreDetail;


import com.blm.service.StoreDetailService;
import com.blm.util.ResponseUtil;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 用户Controller层
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/storeDetail")
public class StoreDetailController {
    @Resource
    private StoreDetailService storeDetailService;


    //获取商家所有信息
    @RequestMapping("/findAll")
    public String findall(HttpServletResponse response) throws Exception {
        List<StoreDetail> storeDetails = storeDetailService.findAll_wz("12");
        JSONObject result=new JSONObject();
        JSONArray jsonArray= new JSONArray(storeDetails);
        result.put("result",jsonArray);
        ResponseUtil.write(response, result);
        return  "test";
    }



    @RequestMapping("/list")
    public String list(@RequestParam(value="page",required=false)String page, @RequestParam(value="rows",required=false)String rows, StoreDetail storeDetail, HttpServletResponse response)throws Exception{
        PageBean pageBean=new PageBean(Integer.parseInt(page),Integer.parseInt(rows));
        Map<String,Object> map=new HashMap<String,Object>();
/*
		map.put("storename", StringUtil.formatLike(store.getStorename()));
*/
        map.put("start", pageBean.getStart());
        map.put("size", pageBean.getPagesize());

        List<StoreDetail> storeList=storeDetailService.find(map);
        Long total=storeDetailService.getTotal(map);


        JSONObject result=new JSONObject();
        JSONArray jsonArray= new JSONArray(storeList);

        result.put("rows", jsonArray);
        result.put("total", total);
        ResponseUtil.write(response, result);
        return null;
    }




    @RequestMapping("/update")
    public String update(StoreDetail storeDetail, HttpServletResponse response)throws Exception{
        int resultTotal=0; // 操作的记录条数
        resultTotal=storeDetailService.update(storeDetail);
        JSONObject result=new JSONObject();
        if(resultTotal>0){
            result.put("success", true);
        }else{
            result.put("success", false);
        }
        ResponseUtil.write(response, result);
        return null;
    }

}
