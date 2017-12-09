package com.smart.domain;

/**
 * Created by Administrator on 2017/10/13.
 */
public class AirportPickUpPrice {
    private String category;
    private String models;
    private int price;
    private int overTimeFee;
    private String remarks;

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getModels() {
        return models;
    }

    public void setModels(String models) {
        this.models = models;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getOverTimeFee() {
        return overTimeFee;
    }

    public void setOverTimeFee(int overTimeFee) {
        this.overTimeFee = overTimeFee;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }


}
