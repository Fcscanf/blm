package com.blm.bean;

public class FoodDetailTemp {
    private String foodname;
    private Float price;
    private String picpath;

    public FoodDetailTemp() {
        this.foodname = foodname;
        this.price = price;
        this.picpath = picpath;
    }

    public String getFoodname() {
        return foodname;
    }

    public void setFoodname(String foodname) {
        this.foodname = foodname;
    }

    public  Float getPrice() {
        return price;
    }

    public void setPrice( Float price) {
        this.price = price;
    }

    public String getPicpath() {
        return picpath;
    }

    public void setPicpath(String picpath) {
        this.picpath = picpath;
    }
}
