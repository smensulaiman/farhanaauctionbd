package com.farhana.model;

public class BlogModel {

    private String blogTitle;
    private String blogType;
    private String blogDescription;
    private String blogImage;
    private long dateTime;

    public BlogModel() {
    }

    public BlogModel(String blogTitle, String blogType, String blogDescription, String blogImage, long dateTime) {
        this.blogTitle = blogTitle;
        this.blogType = blogType;
        this.blogDescription = blogDescription;
        this.blogImage = blogImage;
        this.dateTime = dateTime;
    }

    public long getDateTime() {
        return dateTime;
    }

    public void setDateTime(long dateTime) {
        this.dateTime = dateTime;
    }

    public String getBlogTitle() {
        return blogTitle;
    }

    public void setBlogTitle(String blogTitle) {
        this.blogTitle = blogTitle;
    }

    public String getBlogType() {
        return blogType;
    }

    public void setBlogType(String blogType) {
        this.blogType = blogType;
    }

    public String getBlogDescription() {
        return blogDescription;
    }

    public void setBlogDescription(String blogDescription) {
        this.blogDescription = blogDescription;
    }

    public String getBlogImage() {
        return blogImage;
    }

    public void setBlogImage(String blogImage) {
        this.blogImage = blogImage;
    }

    @Override
    public String toString() {
        return "BlogModel{" + "blogTitle=" + blogTitle + ", blogType=" + blogType + ", blogDescription=" + blogDescription + ", blogImage=" + blogImage + ", dateTime=" + dateTime + '}';
    }
    
}
