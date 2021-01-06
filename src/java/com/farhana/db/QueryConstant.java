package com.farhana.db;

public class QueryConstant {
    public static final String WEB_SITE_INFO            = "SELECT * FROM siteinfo";
    public static final String SELECT_USER              = "select name from users where email = ? and password = ?";
    public static final String SELECT_BIDS              = "select * from bids where productid = ?";
    public static final String SELECT_ALL_PRODUCTS      = "select * from products";
    
    /*              INSERT              */
    public static final String INSERT_NEW_USER      = "insert into users values(default,?,?,?)";
    public static final String INSERT_NEW_BID       = "insert into bids values(default,?,?,?,?)";
    public static final String INSERT_NEW_PRODUCT   = "INSERT INTO products VALUES (default,?,?,?,?,?,?,?,?)";
}
