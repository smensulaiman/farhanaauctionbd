package com.farhana.model;

public class ProductModel {
    private int id;
    private String productName;
    private int productPrice;
    private int productStock;
    private String productSeller;
    private String productStartTime;
    private String productEndTime;
    private int productCategoryID;
    private String productImage;

    public ProductModel() {
    }

    public ProductModel(int id, String productName, int productPrice, int productStock, String productSeller, String productStartTime, String productEndTime, int productCategoryID, String productImage) {
        this.id = id;
        this.productName = productName;
        this.productPrice = productPrice;
        this.productStock = productStock;
        this.productSeller = productSeller;
        this.productStartTime = productStartTime;
        this.productEndTime = productEndTime;
        this.productCategoryID = productCategoryID;
        this.productImage = productImage;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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
