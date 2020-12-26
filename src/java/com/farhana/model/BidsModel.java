package com.farhana.model;

public class BidsModel {
    
    private String name;
    private int amount;
    private String date;
    private int productid;

    public BidsModel() {
    }

    public BidsModel(String name, int amount, String date, int productid) {
        this.name = name;
        this.amount = amount;
        this.date = date;
        this.productid = productid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getProductid() {
        return productid;
    }

    public void setProductid(int productid) {
        this.productid = productid;
    }
    
    
    
}
