package com.blm.bean;

import java.util.List;

public class StoreDetail {
    private String storeid;

    private String userid;

    private String tel;

    private String email;

    private String storename;

    private String storeaddress;

    private String certurl;

    private String shopfronturl;

    private String area;

    private Integer isvalid;

    private List<FoodDetail> foodDetails;

    private List<CheckFood> checkFoods;

    public StoreDetail(String storeid, String userid, String tel, String email, String storename, String storeaddress, String certurl, String shopfronturl, String area, Integer isvalid, List<FoodDetail> foodDetails, List<CheckFood> checkFoods) {
        this.storeid = storeid;
        this.userid = userid;
        this.tel = tel;
        this.email = email;
        this.storename = storename;
        this.storeaddress = storeaddress;
        this.certurl = certurl;
        this.shopfronturl = shopfronturl;
        this.area = area;
        this.isvalid = isvalid;
        this.foodDetails = foodDetails;
        this.checkFoods = checkFoods;
    }

    public List<CheckFood> getCheckFoods() {
        return checkFoods;
    }

    public void setCheckFoods(List<CheckFood> checkFoods) {
        this.checkFoods = checkFoods;
    }

    public List<FoodDetail> getFoodDetails() {
        return foodDetails;
    }

    public void setFoodDetails(List<FoodDetail> foodDetails) {
        this.foodDetails = foodDetails;
    }

    public StoreDetail() {
        super();
    }

    public String getStoreid() {
        return storeid;
    }

    public void setStoreid(String storeid) {
        this.storeid = storeid == null ? null : storeid.trim();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel == null ? null : tel.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getStorename() {
        return storename;
    }

    public void setStorename(String storename) {
        this.storename = storename == null ? null : storename.trim();
    }

    public String getStoreaddress() {
        return storeaddress;
    }

    public void setStoreaddress(String storeaddress) {
        this.storeaddress = storeaddress == null ? null : storeaddress.trim();
    }

    public String getCerturl() {
        return certurl;
    }

    public void setCerturl(String certurl) {
        this.certurl = certurl == null ? null : certurl.trim();
    }

    public String getShopfronturl() {
        return shopfronturl;
    }

    public void setShopfronturl(String shopfronturl) {
        this.shopfronturl = shopfronturl == null ? null : shopfronturl.trim();
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area == null ? null : area.trim();
    }

    public Integer getIsvalid() {
        return isvalid;
    }

    public void setIsvalid(Integer isvalid) {
        this.isvalid = isvalid;
    }
}