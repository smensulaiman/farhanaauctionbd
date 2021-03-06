package com.farhana.model;

public class SellerModel {
    
    private String sellerName;
    private String sellerEmail;
    private String sellerAddress;
    private String sellerPhone;

    public SellerModel() {
    }

    public SellerModel(String sellerName, String sellerEmail, String sellerAddress, String sellerPhone) {
        this.sellerName = sellerName;
        this.sellerEmail = sellerEmail;
        this.sellerAddress = sellerAddress;
        this.sellerPhone = sellerPhone;
    }

    public String getSellerName() {
        return sellerName;
    }

    public void setSellerName(String sellerName) {
        this.sellerName = sellerName;
    }

    public String getSellerEmail() {
        return sellerEmail;
    }

    public void setSellerEmail(String sellerEmail) {
        this.sellerEmail = sellerEmail;
    }

    public String getSellerAddress() {
        return sellerAddress;
    }

    public void setSellerAddress(String sellerAddress) {
        this.sellerAddress = sellerAddress;
    }

    public String getSellerPhone() {
        return sellerPhone;
    }

    public void setSellerPhone(String sellerPhone) {
        this.sellerPhone = sellerPhone;
    }

    @Override
    public String toString() {
        return "SellerModel{" + "sellerName=" + sellerName + ", sellerEmail=" + sellerEmail + ", sellerAddress=" + sellerAddress + ", sellerPhone=" + sellerPhone + '}';
    }

}
