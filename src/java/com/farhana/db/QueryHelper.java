package com.farhana.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class QueryHelper {
    
    private Connection conn;
    private PreparedStatement pst;
    
    private Connection dbConnection(){
        try{
            if(DBHelper.conn != null){
                this.conn = DBHelper.conn;
            }else{
                this.conn = DBHelper.getConnection();
            }
            }catch(Exception e){
                e.printStackTrace();
            }
        return conn;
    }
    
    public int signUpUser(String email, String name, String password){
        
        try {
            
            pst = dbConnection().prepareStatement(QueryConstant.INSERT_NEW_USER);
            pst.setString(1, email);
            pst.setString(2, name);
            pst.setString(3, password);
            
            int a = pst.executeUpdate();
            
            if(a>0){
                System.out.println("Data Inserted Successfully");
                return a;
            }else{
                System.out.println("Faild");
            }
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return 0;
    }
    
}
