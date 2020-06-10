package com.farhana.manager;

import com.farhana.model.ProductModel;
import java.util.List;

public class Manager {
    
    public void getDemoProducts(List<ProductModel> productModels){
        
        productModels.add(new ProductModel("MSAAEX Disposable Face Mask","15","20000","Ananta Jalil","","PPE","1"));
        productModels.add(new ProductModel("Powder-free Hand Gloves","20","20000","Masood Rana","","PPE","2"));
        productModels.add(new ProductModel("MSAAEX Disposable Face Mask","15","20000","Ananta Jalil","","PPE","3"));
        productModels.add(new ProductModel("MSAAEX Disposable Face Mask","15","20000","Ananta Jalil","","PPE","4"));
        productModels.add(new ProductModel("Surgical  Face Mask","10","20000","Gazi Group","","PPE","1"));
        productModels.add(new ProductModel("SN95 Reusable 6-Layer Masks ","50","20000","Ananta Jalil","","PPE","2"));
        productModels.add(new ProductModel("MSAAEX Disposable Face Mask","15","20000","Ananta Jalil","","PPE","3"));
        productModels.add(new ProductModel("Powder-free Hand Gloves","20","20000","Masood Rana","","PPE","4")); 
    }
    
}
