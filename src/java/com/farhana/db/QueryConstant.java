package com.farhana.db;

public class QueryConstant {
    public static final String WEB_SITE_INFO            = "SELECT * FROM siteinfo";
    public static final String SELECT_USER              = "select name from users where email = ? and password = ?";
    public static final String SELECT_SELLER            = "select sellerName from seller where sellerEmail = ?";
    public static final String SELECT_BIDS              = "select * from bids where productid = ? order by amount DESC";
    public static final String SELECT_ALL_PRODUCTS      = "select * from products";
    public static final String SELECT_ALL_CATEGORIES    = "select * from category";
    public static final String SELECT_ALL_BLOGS         = "select * from blogs";
    public static final String SELECT_ALL_JOBS          = "select * from jobs";
    
    
    /*              CREATE              */
    public static final String CREATE_BLOG_TABLE          = "CREATE TABLE IF NOT EXISTS blogs "
                                                            + "(id INT not null auto_increment, blogTitle varchar(255), blogType varchar(255),"
                                                            + " blogDescription varchar(255), dateTime varchar(255),"
                                                            + " blogImage varchar(255),"
                                                            + "primary key (id));";
    
    
    /*              INSERT              */
    public static final String INSERT_NEW_USER      = "insert into users values(default,?,?,?)";
    public static final String INSERT_NEW_BID       = "insert into bids values(default,?,?,?,?)";
    public static final String INSERT_NEW_JOB       = "insert into jobs values(default,?,?,?,?,?,?,?)";
    public static final String INSERT_NEW_PRODUCT   = "INSERT INTO products VALUES (default,?,?,?,?,?,?,?,?)";
    public static final String INSERT_NEW_SELLER    = "INSERT INTO seller VALUES (default,?,?,?,?)";
    public static final String INSERT_NEW_BLOG      = "INSERT INTO blogs VALUES (default,?,?,?,?,?)";
    
    /*              JOIN              */
    public static final String JOIN_PRODUCT_WITH_BID = "select * from bids as b inner join products as p on b.productId = p.id order by p.id, b.amount DESC";
}
