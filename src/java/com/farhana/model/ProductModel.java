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
    private String productImageOne;
    private String productImageTwo;
    private String productImageThree;
    private String productImageFour;

    public ProductModel() {
    }

    public ProductModel(int id, String productName, int productPrice, int productStock, String productSeller, String productStartTime, String productEndTime, int productCategoryID, String productImageOne, String productImageTwo, String productImageThree, String productImageFour) {
        this.id = id;
        this.productName = productName;
        this.productPrice = productPrice;
        this.productStock = productStock;
        this.productSeller = productSeller;
        this.productStartTime = productStartTime;
        this.productEndTime = productEndTime;
        this.productCategoryID = productCategoryID;
        this.productImageOne = productImageOne;
        this.productImageTwo = productImageTwo;
        this.productImageThree = productImageThree;
        this.productImageFour = productImageFour;
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

    public String getProductImageOne() {
        return productImageOne;
    }

    public void setProductImageOne(String productImageOne) {
        this.productImageOne = productImageOne;
    }

    public String getProductImageTwo() {
        return productImageTwo;
    }

    public void setProductImageTwo(String productImageTwo) {
        this.productImageTwo = productImageTwo;
    }

    public String getProductImageThree() {
        return productImageThree;
    }

    public void setProductImageThree(String productImageThree) {
        this.productImageThree = productImageThree;
    }

    public String getProductImageFour() {
        return productImageFour;
    }

    public void setProductImageFour(String productImageFour) {
        this.productImageFour = productImageFour;
    }

    @Override
    public String toString() {
        return "ProductModel{" + "id=" + id + ", productName=" + productName + ", productPrice=" + productPrice + ", productStock=" + productStock + ", productSeller=" + productSeller + ", productStartTime=" + productStartTime + ", productEndTime=" + productEndTime + ", productCategoryID=" + productCategoryID + ", productImageOne=" + productImageOne + ", productImageTwo=" + productImageTwo + ", productImageThree=" + productImageThree + ", productImageFour=" + productImageFour + '}';
    }

}
