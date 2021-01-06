package com.farhana.manager;

import com.farhana.db.QueryHelper;
import com.farhana.model.ProductModel;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Manager {
    
    public void getDemoProducts(List<ProductModel> productModels){
        try {
            QueryHelper queryHelper =  new QueryHelper();
            productModels.addAll(queryHelper.getAllProducts());
        } catch (SQLException ex) {
            Logger.getLogger(Manager.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public static void main(String[] args) {
        QueryHelper queryHelper =  new QueryHelper();
        int imageNumber = 1;
        for(int i = 0; i < 20; i++){
            if(imageNumber > 5){
                imageNumber = 1;
            }
            queryHelper.insertProduct(new ProductModel(0,"MSAAEX Disposable Face Mask",12,10000,"Farhana",String.valueOf(System.currentTimeMillis()),String.valueOf(System.currentTimeMillis()),1,String.valueOf(imageNumber++)));
        }
    }
}
