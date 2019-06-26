package com.blm.bean;

import java.util.Date;
import java.util.List;

public class OrderBlm {
    private String orderid;

    private String userid;

    private String username;

    private String storeid;

    private String foodid;

    private String foodname;

    private String totalprice;

    private Date datee;

    private Integer isvalid;

    private String remarks;

    private List<OrderDetail> orderDetails;

    private List<FoodDetail> foodDetails;

    private OrderDetail orderDetail;

    private FoodDetail foodDetail;


    public OrderBlm(String orderid, String userid, String username, String storeid, String foodid, String foodname, String totalprice, Date datee, Integer isvalid, String remarks, List<OrderDetail> orderDetails, List<FoodDetail> foodDetails, OrderDetail orderDetail, FoodDetail foodDetail) {
        this.orderid = orderid;
        this.userid = userid;
        this.username = username;
        this.storeid = storeid;
        this.foodid = foodid;
        this.foodname = foodname;
        this.totalprice = totalprice;
        this.datee = datee;
        this.isvalid = isvalid;
        this.remarks = remarks;
        this.orderDetails = orderDetails;
        this.foodDetails = foodDetails;
        this.orderDetail = orderDetail;
        this.foodDetail = foodDetail;
    }

    public OrderDetail getOrderDetail() {
        return orderDetail;
    }

    public void setOrderDetail(OrderDetail orderDetail) {
        this.orderDetail = orderDetail;
    }

    public FoodDetail getFoodDetail() {
        return foodDetail;
    }

    public void setFoodDetail(FoodDetail foodDetail) {
        this.foodDetail = foodDetail;
    }

    public List<FoodDetail> getFoodDetails() {
        return foodDetails;
    }

    public void setFoodDetails(List<FoodDetail> foodDetails) {
        this.foodDetails = foodDetails;
    }

    public List<OrderDetail> getOrderDetails() {
        return orderDetails;
    }

    public void setOrderDetails(List<OrderDetail> orderDetails) {
        this.orderDetails = orderDetails;
    }



    public OrderBlm() {
        super();
    }

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid == null ? null : orderid.trim();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getStoreid() {
        return storeid;
    }

    public void setStoreid(String storeid) {
        this.storeid = storeid == null ? null : storeid.trim();
    }

    public String getFoodid() {
        return foodid;
    }

    public void setFoodid(String foodid) {
        this.foodid = foodid == null ? null : foodid.trim();
    }

    public String getFoodname() {
        return foodname;
    }

    public void setFoodname(String foodname) {
        this.foodname = foodname == null ? null : foodname.trim();
    }

    public String getTotalprice() {
        return totalprice;
    }

    public void setTotalprice(String totalprice) {
        this.totalprice = totalprice == null ? null : totalprice.trim();
    }

    public Date getDatee() {
        return datee;
    }

    public void setDatee(Date datee) {
        this.datee = datee;
    }

    public Integer getIsvalid() {
        return isvalid;
    }

    public void setIsvalid(Integer isvalid) {
        this.isvalid = isvalid;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }
}