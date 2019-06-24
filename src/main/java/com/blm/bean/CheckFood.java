package com.blm.bean;

import java.util.List;

public class CheckFood {
    private String foodid;

    private String foodtype;

    private String keywords;

    private String storeid;

    private List<FoodDetail> foodDetail;

    private List<StoreDetail>  storeDetail;

    public CheckFood(String foodid, String foodtype, String keywords, String storeid, List<FoodDetail> foodDetail, List<StoreDetail> storeDetail) {
        this.foodid = foodid;
        this.foodtype = foodtype;
        this.keywords = keywords;
        this.storeid = storeid;
        this.foodDetail = foodDetail;
        this.storeDetail = storeDetail;
    }

    public List<FoodDetail> getFoodDetail() {
        return foodDetail;
    }

    public void setFoodDetail(List<FoodDetail> foodDetail) {
        this.foodDetail = foodDetail;
    }

    public List<StoreDetail> getStoreDetail() {
        return storeDetail;
    }

    public void setStoreDetail(List<StoreDetail> storeDetail) {
        this.storeDetail = storeDetail;
    }

    public CheckFood() {
        super();
    }

    public String getFoodid() {
        return foodid;
    }

    public void setFoodid(String foodid) {
        this.foodid = foodid == null ? null : foodid.trim();
    }

    public String getFoodtype() {
        return foodtype;
    }

    public void setFoodtype(String foodtype) {
        this.foodtype = foodtype == null ? null : foodtype.trim();
    }

    public String getKeywords() {
        return keywords;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords == null ? null : keywords.trim();
    }

    public String getStoreid() {
        return storeid;
    }

    public void setStoreid(String storeid) {
        this.storeid = storeid == null ? null : storeid.trim();
    }
}