package com.farhana.model;

public class ProductModel {
    
    private String productName;
    private String productPrice;
    private String productStock;
    private String productSeller;
    private String productTime;
    private String productCategory;
    private String productImage;

    public ProductModel() {
    }

    public ProductModel(String productName, String productPrice, String productStock, String productSeller, String productTime, String productCategory, String productImage) {
        this.productName = productName;
        this.productPrice = productPrice;
        this.productStock = productStock;
        this.productSeller = productSeller;
        this.productTime = productTime;
        this.productCategory = productCategory;
        this.productImage = productImage;
    }

    public String getProductName() {
        return productName;
    }

    public String getProductPrice() {
        return productPrice;
    }

    public String getProductStock() {
        return productStock;
    }

    public String getProductSeller() {
        return productSeller;
    }

    public String getProductTime() {
        return productTime;
    }

    public String getProductCategory() {
        return productCategory;
    }

    public String getProductImage() {
        return productImage;
    }  
    
}
