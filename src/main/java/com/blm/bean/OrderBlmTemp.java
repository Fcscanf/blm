package com.blm.bean;

import java.util.Date;
import java.util.List;

public class OrderBlmTemp {
    private Date datee;
    private List<FoodDetail> foodDetails;
    private List<FoodDetailTemp>  foodDetailTemps;
    private FoodDetail foodDetail;
    private String orderid;
    private String username;
    public OrderBlmTemp(){}

    public OrderBlmTemp(Date datee, List<FoodDetail> foodDetails, List<FoodDetailTemp> foodDetailTemps, FoodDetail foodDetail, String orderid, String username) {
        this.datee = datee;
        this.foodDetails = foodDetails;
        this.foodDetailTemps = foodDetailTemps;
        this.foodDetail = foodDetail;
        this.orderid = orderid;
        this.username = username;
    }

    public List<FoodDetailTemp> getFoodDetailTemps() {
        return foodDetailTemps;
    }

    public void setFoodDetailTemps(List<FoodDetailTemp> foodDetailTemps) {
        this.foodDetailTemps = foodDetailTemps;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }


    public FoodDetail getFoodDetail() {
        return foodDetail;
    }

    public void setFoodDetail(FoodDetail foodDetail) {
        this.foodDetail = foodDetail;
    }

    public Date getDatee() {
        return datee;
    }

    public void setDatee(Date datee) {
        this.datee = datee;
    }

    public List<FoodDetail> getFoodDetails() {
        return foodDetails;
    }

    public void setFoodDetails(List<FoodDetail> foodDetails) {
        this.foodDetails = foodDetails;
    }

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid;
    }

}
