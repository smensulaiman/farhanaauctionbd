package com.farhana.db;

public class QueryConstant {
    public static final String WEB_SITE_INFO    = "SELECT * FROM siteinfo";
    public static final String INSERT_NEW_USER  = "insert into users values(default,?,?,?)";
    public static final String SELECT_USER      = "select name from users where email = ? and password = ?";
}