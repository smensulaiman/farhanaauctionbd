package com.farhana.db;

import com.farhana.model.BidsModel;
import com.farhana.model.OrderModel;
import com.farhana.model.ProductModel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class QueryHelper {

    private Connection conn;
    private PreparedStatement pst;
    private ResultSet rs;

    private Connection dbConnection() {
        try {
            if (DBHelper.conn != null) {
                System.out.println("Previous Connection");
                this.conn = DBHelper.conn;
            } else {
                System.out.println("New Connection");
                this.conn = DBHelper.getConnection();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    public int signUpUser(String email, String name, String password) {

        try {

            pst = dbConnection().prepareStatement(QueryConstant.INSERT_NEW_USER);
            pst.setString(1, name);
            pst.setString(2, email);
            pst.setString(3, password);

            int a = pst.executeUpdate();

            if (a > 0) {
                pst.close();
                System.out.println("Data Inserted Successfully");
                return 1;
            } else {
                pst.close();
                System.out.println("Faild");
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
            if (ex.getMessage().contains("Duplicate entry")) {
                System.out.println("error : " + ex.getMessage());
                return 2;
            }
        }

        return 0;
    }

    public String logInUser(String email, String password) {

        try {

            pst = dbConnection().prepareStatement(QueryConstant.SELECT_USER);
            pst.setString(1, email);
            pst.setString(2, password);

            rs = pst.executeQuery();

            if (rs.next()) {
                System.out.println("Data Retrived Successfully");
                String name = rs.getString("name");
                pst.close();
                rs.close();
                return name;
            } else {
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

    public List<BidsModel> getBids(int productid) throws SQLException {
        List<BidsModel> bidsModels = new ArrayList<>();

        try {

            pst = dbConnection().prepareStatement(QueryConstant.SELECT_BIDS);
            pst.setInt(1, productid);
            rs = pst.executeQuery();

            if (rs.next()) {
                bidsModels.add(new BidsModel(rs.getString("name"), rs.getInt("amount"), rs.getString("date"), rs.getInt("productid")));
            } else {
                System.out.println("Faild");
                return null;
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            pst.close();
            rs.close();
        }
        
        return bidsModels;
    }

    public int insertProduct(ProductModel productModel) {

        try {
            pst = dbConnection().prepareStatement(QueryConstant.INSERT_NEW_PRODUCT);
            pst.setString(1, productModel.getProductName());
            pst.setInt(2, productModel.getProductPrice());
            pst.setInt(3, productModel.getProductStock());
            pst.setString(4, productModel.getProductSeller());
            pst.setString(5, productModel.getProductStartTime());
            pst.setString(6, productModel.getProductEndTime());
            pst.setInt(7, productModel.getProductCategoryID());
            pst.setString(8, productModel.getProductImage());

            int a = pst.executeUpdate();

            if (a > 0) {
                pst.close();
                System.out.println("Data Inserted Successfully");
                return 1;
            } else {
                pst.close();
                System.out.println("Faild");
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
            if (ex.getMessage().contains("Duplicate entry")) {
                System.out.println("error : " + ex.getMessage());
                return 2;
            }
        }

        return 0;
    }

    public List<ProductModel> getAllProducts() throws SQLException {

        List<ProductModel> productModels = new ArrayList<>();

        try {

            pst = dbConnection().prepareStatement(QueryConstant.SELECT_ALL_PRODUCTS);
            rs = pst.executeQuery();

            while (rs.next()) {
                productModels.add(new ProductModel(
                        rs.getInt("id"),
                        rs.getString("productName"),
                        rs.getInt("productPrice"),
                        rs.getInt("productStock"),
                        rs.getString("productSeller"),
                        rs.getString("productStartTime"),
                        rs.getString("productEndTime"),
                        rs.getInt("productCategoryID"),
                        rs.getString("productImage")
                ));
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            pst.close();
            rs.close();
        }
        System.out.println("Retrive siz: " + productModels.size());
        return productModels;
    }

    public boolean postBid(String name, int amount, String date, int productid) throws SQLException {
        boolean status = false;
        try {

            pst = dbConnection().prepareStatement(QueryConstant.INSERT_NEW_BID);
            pst.setString(1, name);
            pst.setInt(2, amount);
            pst.setString(3, date);
            pst.setInt(4, productid);

            int a = pst.executeUpdate();

            if (a > 0) {
                System.out.println("Data Inserted Successfully");
                status = true;
            } else {
                status = false;
                System.out.println("Faild");
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
            if (ex.getMessage().contains("Duplicate entry")) {
                System.out.println("error : " + ex.getMessage());
                status = false;
            }
        } finally {
            pst.close();
        }
        return status;
    }

        public List<OrderModel> getAllOrders() throws SQLException {

        List<OrderModel> productModels = new ArrayList<>();

        try {

            pst = dbConnection().prepareStatement(QueryConstant.SELECT_ALL_PRODUCTS);
            rs = pst.executeQuery();
            
            while (rs.next()) {
                productModels.add(new OrderModel(
                        rs.getString("name"),
                        rs.getInt("amount"),
                        rs.getString("date"),
                        rs.getInt("productid"),
                        rs.getString("productName"),
                        rs.getInt("productPrice"),
                        rs.getInt("productStock"),
                        rs.getString("productSeller"),
                        rs.getString("productStartTime"),
                        rs.getString("productEndTime"),
                        rs.getInt("productCategoryID"),
                        rs.getString("productImage")
                ));
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            pst.close();
            rs.close();
        }
        System.out.println("Retrive siz: " + productModels.size());
        return productModels;
    }
    
}
