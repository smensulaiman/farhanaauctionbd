package com.farhana.db;

import com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class QueryHelper {
    
    private Connection conn;
    private PreparedStatement pst;
    private ResultSet rs;
    
    private Connection dbConnection(){
        try{
            if(DBHelper.conn != null){
                System.out.println("Previous Connection");
                this.conn = DBHelper.conn;
            }else{
                System.out.println("New Connection");
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
                pst.close();
                System.out.println("Data Inserted Successfully");
                return 1;
            }else{
                pst.close();
                System.out.println("Faild");
            }
            
        } catch (SQLException ex) {
            ex.printStackTrace();
            if(ex.getMessage().contains("Duplicate entry")){
                System.out.println("error : "+ex.getMessage());
                return 2;
            }
        }
        
        return 0;
    }
    
    public String logInUser(String email, String password){
        
         try {
            
            pst = dbConnection().prepareStatement(QueryConstant.SELECT_USER);
            pst.setString(1, email);
            pst.setString(2, password);
            
            rs = pst.executeQuery();
            
            if(rs.next()){
                System.out.println("Data Retrived Successfully");
                String name = rs.getString("name");
                pst.close();
                rs.close();
                return name;
            }else{
                pst.close();
                rs.close();
                System.out.println("Faild");
                return null;
            }
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return "";
    }
    
}
