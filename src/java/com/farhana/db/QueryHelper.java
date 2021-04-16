package com.farhana.db;

import com.farhana.model.BidsModel;
import com.farhana.model.BlogModel;
import com.farhana.model.CategoryModel;
import com.farhana.model.JobsModel;
import com.farhana.model.OrderModel;
import com.farhana.model.ProductModel;
import com.farhana.model.SellerModel;
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
                this.conn = DBHelper.conn;
            } else {
                this.conn = DBHelper.getConnection();
            }
        } catch (Exception e) {
        }
        return conn;
    }

    public int signUpUser(String email, String name, String password) {

        try {

            pst = dbConnection()
                    .prepareStatement(QueryConstant.INSERT_NEW_USER);
            pst.setString(1, email);
            pst.setString(2, name);
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
        }

        return "";
    }

    public String logInSeller(String email) {

        try {

            pst = dbConnection().prepareStatement(QueryConstant.SELECT_SELLER);
            pst.setString(1, email);

            rs = pst.executeQuery();

            if (rs.next()) {
                System.out.println("Data Retrived Successfully");
                String name = rs.getString("sellerName");
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
        }

        return "";
    }

    public List<BidsModel> getBids(int productid) throws SQLException {
        List<BidsModel> bidsModels = new ArrayList<>();

        try {
            System.out.println("Product ID : " + productid);
            pst = dbConnection().prepareStatement(QueryConstant.SELECT_BIDS);
            pst.setInt(1, productid);
            rs = pst.executeQuery();

            while (rs.next()) {
                bidsModels.add(new BidsModel(rs.getString("name"),
                        rs.getInt("amount"),
                        rs.getString("date"),
                        rs.getInt("productid")));
            }

        } catch (SQLException ex) {
        } finally {
            pst.close();
            rs.close();
        }

        return bidsModels;
    }

    public int insertProduct(ProductModel productModel) {

        try {
            pst = dbConnection()
                    .prepareStatement(QueryConstant.INSERT_NEW_PRODUCT);
            pst.setString(1, productModel.getProductName());
            pst.setInt(2, productModel.getProductPrice());
            pst.setInt(3, productModel.getProductStock());
            pst.setString(4, productModel.getProductSeller());
            pst.setString(5, productModel.getProductStartTime());
            pst.setString(6, productModel.getProductEndTime());
            pst.setInt(7, productModel.getProductCategoryID());
            pst.setString(8, productModel.getProductImageOne());
            pst.setString(9, productModel.getProductImageTwo());
            pst.setString(10, productModel.getProductImageThree());
            pst.setString(11, productModel.getProductImageFour());

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

            pst = dbConnection()
                    .prepareStatement(QueryConstant.SELECT_ALL_PRODUCTS);
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
                        rs.getString("productImage"),
                        rs.getString("productImageTwo"),
                        rs.getString("productImageThree"),
                        rs.getString("productImageFour")
                ));
            }

        } catch (SQLException ex) {
        } finally {
            pst.close();
            rs.close();
        }
        return productModels;
    }

    public boolean postBid(String name, int amount, String date, int productid)
            throws SQLException {
        boolean status = false;
        try {

            pst = dbConnection()
                    .prepareStatement(QueryConstant.INSERT_NEW_BID);
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

            pst = dbConnection()
                    .prepareStatement(QueryConstant.JOIN_PRODUCT_WITH_BID);
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
        } finally {
            pst.close();
            rs.close();
        }
        return productModels;
    }

    public boolean inserSeller(String sellerName, String sellerEmail,
            String sellerAddress, String sellerPhone) throws SQLException {

        boolean status = false;
        try {

            pst = dbConnection()
                    .prepareStatement(QueryConstant.INSERT_NEW_SELLER);
            pst.setString(1, sellerName);
            pst.setString(2, sellerEmail);
            pst.setString(3, sellerAddress);
            pst.setString(4, sellerPhone);

            int a = pst.executeUpdate();

            if (a > 0) {
                System.out.println("Seller Inserted Successfully");
                status = true;
            } else {
                status = false;
                System.out.println("Faild");
            }

        } catch (SQLException ex) {
            if (ex.getMessage().contains("Duplicate entry")) {
                System.out.println("error : " + ex.getMessage());
                status = false;
            }
        } finally {
            pst.close();
        }
        return status;

    }

    public List<SellerModel> getAllSeller() throws SQLException {

        List<SellerModel> sellerModels = new ArrayList<>();

        try {

            pst = dbConnection()
                    .prepareStatement(QueryConstant.SELECT_ALL_PRODUCTS);
            rs = pst.executeQuery();

            while (rs.next()) {
                sellerModels.add(new SellerModel(
                        rs.getString("sellerName"),
                        rs.getString("sellerEmail"),
                        rs.getString("sellerAddress"),
                        rs.getString("sellerPhone")
                ));
            }

        } catch (SQLException ex) {
        } finally {
            pst.close();
            rs.close();
        }
        return sellerModels;
    }

    public boolean postJob(String jobTitle, String jobType, String jobLocation,
            String jobDescription, String skills, String salary, String poser)
            throws SQLException {
        boolean status = false;
        try {

            pst = dbConnection()
                    .prepareStatement(QueryConstant.INSERT_NEW_JOB);
            pst.setString(1, jobTitle);
            pst.setString(2, jobType);
            pst.setString(3, jobLocation);
            pst.setString(4, jobDescription);
            pst.setString(5, skills);
            pst.setString(6, salary);
            pst.setString(7, poser);

            int a = pst.executeUpdate();

            if (a > 0) {
                System.out.println("Data Inserted Successfully");
                status = true;
            } else {
                status = false;
                System.out.println("Faild");
            }

        } catch (SQLException ex) {
            if (ex.getMessage().contains("Duplicate entry")) {
                System.out.println("error : " + ex.getMessage());
                status = false;
            }
        } finally {
            pst.close();
        }
        return status;
    }

    public List<JobsModel> getAllJobs() throws SQLException {

        List<JobsModel> jobModels = new ArrayList<>();
        try {

            pst = dbConnection()
                    .prepareStatement(QueryConstant.SELECT_ALL_JOBS);
            rs = pst.executeQuery();

            while (rs.next()) {
                jobModels.add(new JobsModel(
                        rs.getString("jobTitle"),
                        rs.getString("jobType"),
                        rs.getString("jobLocation"),
                        rs.getString("jobDescription"),
                        rs.getString("skills"),
                        rs.getString("salary"),
                        rs.getString("poser")
                ));
            }

        } catch (SQLException ex) {
        } finally {
            pst.close();
            rs.close();
        }
        return jobModels;
    }

    public List<CategoryModel> getAllCategories() throws SQLException {
        List<CategoryModel> categoryModels = new ArrayList<>();

        try {
            pst = dbConnection()
                    .prepareStatement(QueryConstant.SELECT_ALL_CATEGORIES);
            rs = pst.executeQuery();
            while (rs.next()) {
                categoryModels.add(new CategoryModel(
                        rs.getInt("id"),
                        rs.getString("categoryname")
                ));
            }

        } catch (SQLException ex) {
        } finally {
            pst.close();
            rs.close();
        }

        return categoryModels;
    }

    public boolean insertNewBlog(BlogModel blogModel) throws SQLException {
        boolean status = false;
        try {

            pst = dbConnection()
                    .prepareStatement(QueryConstant.CREATE_BLOG_TABLE);
            int a = pst.executeUpdate();
            pst = dbConnection()
                    .prepareStatement(QueryConstant.INSERT_NEW_BLOG);
            pst.setString(1, blogModel.getBlogTitle());
            pst.setString(2, blogModel.getBlogType());
            pst.setString(3, blogModel.getBlogDescription());
            pst.setString(4, String.valueOf(blogModel.getDateTime()));
            pst.setString(5, blogModel.getBlogImage());

            a = pst.executeUpdate();

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

    public List<BlogModel> getAllBlogs() throws SQLException {
        List<BlogModel> blogModels = new ArrayList<>();

        try {
            pst = dbConnection()
                    .prepareStatement(QueryConstant.SELECT_ALL_BLOGS);
            rs = pst.executeQuery();
            while (rs.next()) {

                blogModels.add(new BlogModel(
                        rs.getString("blogTitle"),
                        rs.getString("blogType"),
                        rs.getString("blogDescription"),
                        rs.getString("blogImage"),
                        Long.parseLong(rs.getString("dateTime"))
                ));
            }

        } catch (SQLException ex) {
        } finally {
            try {
                pst.close();
                rs.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return blogModels;
    }

}
