package com.farhana.model;

public class OrderModel {

    private String name;
    private int amount;
    private String date;
    private int productid;
    private String productName;
    private int productPrice;
    private int productStock;
    private String productSeller;
    private String productStartTime;
    private String productEndTime;
    private int productCategoryID;
    private String productImage;

    public OrderModel() {
    }

    public OrderModel(String name, int amount, String date, int productid, String productName, int productPrice, int productStock, String productSeller, String productStartTime, String productEndTime, int productCategoryID, String productImage) {
        this.name = name;
        this.amount = amount;
        this.date = date;
        this.productid = productid;
        this.productName = productName;
        this.productPrice = productPrice;
        this.productStock = productStock;
        this.productSeller = productSeller;
        this.productStartTime = productStartTime;
        this.productEndTime = productEndTime;
        this.productCategoryID = productCategoryID;
        this.productImage = productImage;
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

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(int productPrice) {
        this.productPrice = productPrice;
    }

    public int getProductStock() {
        return productStock;
    }

    public void setProductStock(int productStock) {
        this.productStock = productStock;
    }

    public String getProductSeller() {
        return productSeller;
    }

    public void setProductSeller(String productSeller) {
        this.productSeller = productSeller;
    }

    public String getProductStartTime() {
        return productStartTime;
    }

    public void setProductStartTime(String productStartTime) {
        this.productStartTime = productStartTime;
    }

    public String getProductEndTime() {
        return productEndTime;
    }

    public void setProductEndTime(String productEndTime) {
        this.productEndTime = productEndTime;
    }

    public int getProductCategoryID() {
        return productCategoryID;
    }

    public void setProductCategoryID(int productCategoryID) {
        this.productCategoryID = productCategoryID;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }
    
    
}
