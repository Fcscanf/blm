package com.blm.bean;

public class FoodDetail {
    private String foodid;

    private String foodname;

    private String othername;

    private Float price;

    private String description;

    private Integer isvalid;

    private String picpath;



    public FoodDetail(String foodid, String foodname, String othername, Float price, String description, Integer isvalid, String picpath) {
        this.foodid = foodid;
        this.foodname = foodname;
        this.othername = othername;
        this.price = price;
        this.description = description;
        this.isvalid = isvalid;
        this.picpath = picpath;
    }

    public String getPicpath() {
        return picpath;
    }

    public void setPicpath(String picpath) {
        this.picpath = picpath;
    }

    public FoodDetail() {
        super();
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

    public String getOthername() {
        return othername;
    }

    public void setOthername(String othername) {
        this.othername = othername == null ? null : othername.trim();
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public Integer getIsvalid() {
        return isvalid;
    }

    public void setIsvalid(Integer isvalid) {
        this.isvalid = isvalid;
    }
}