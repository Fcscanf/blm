package com.blm.bean;

public class OrderDetail {
    private String orderdetailid;

    private String foodid;

    private String orderid;

    public OrderDetail(String orderdetailid, String foodid, String orderid) {
        this.orderdetailid = orderdetailid;
        this.foodid = foodid;
        this.orderid = orderid;
    }

    public OrderDetail() {
        super();
    }

    public String getOrderdetailid() {
        return orderdetailid;
    }

    public void setOrderdetailid(String orderdetailid) {
        this.orderdetailid = orderdetailid == null ? null : orderdetailid.trim();
    }

    public String getFoodid() {
        return foodid;
    }

    public void setFoodid(String foodid) {
        this.foodid = foodid == null ? null : foodid.trim();
    }

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid == null ? null : orderid.trim();
    }
}