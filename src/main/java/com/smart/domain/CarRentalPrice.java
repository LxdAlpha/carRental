package com.smart.domain;

/**
 * Created by Administrator on 2017/10/13.
 */
public class CarRentalPrice {
    private String category;
    private String models;
    private int seats;
    private int hireDay;
    private int hireMonth;
    private float overKilometers;
    private int overtime;
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

    public int getSeats() {
        return seats;
    }

    public void setSeats(int seats) {
        this.seats = seats;
    }

    public int getHireDay() {
        return hireDay;
    }

    public void setHireDay(int hireDay) {
        this.hireDay = hireDay;
    }

    public int getHireMonth() {
        return hireMonth;
    }

    public void setHireMonth(int hireMonth) {
        this.hireMonth = hireMonth;
    }

    public float getOverKilometers() {
        return overKilometers;
    }

    public void setOverKilometers(float overKilometers) {
        this.overKilometers = overKilometers;
    }

    public int getOvertime() {
        return overtime;
    }

    public void setOvertime(int overtime) {
        this.overtime = overtime;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }
}
