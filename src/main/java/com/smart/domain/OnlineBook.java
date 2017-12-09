package com.smart.domain;

/**
 * Created by Administrator on 2017/10/14.
 */
public class OnlineBook {
    private String service;
    private String models;
    private String name;
    private String phone;
    private String borrowTime;
    private String returnTime;
    private String demand;

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }

    public String getModels() {
        return models;
    }

    public void setModels(String models) {
        this.models = models;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getBorrowTime() {
        return borrowTime;
    }

    public void setBorrowTime(String borrowTime) {
        this.borrowTime = borrowTime;
    }

    public String getReturnTime() {
        return returnTime;
    }

    public void setReturnTime(String returnTime) {
        this.returnTime = returnTime;
    }

    public String getDemand() {
        return demand;
    }

    public void setDemand(String demand) {
        this.demand = demand;
    }
}
