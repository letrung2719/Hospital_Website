/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author admin
 */
public class Blogs {
    private int blogID;
    private String title;
    private String date;
    private String image;
    private String description;

    public Blogs() {
    }

    public Blogs(int blogID, String title, String date, String image, String description) {
        this.blogID = blogID;
        this.title = title;
        this.date = date;
        this.image = image;
        this.description = description;
    }

    public int getBlogID() {
        return blogID;
    }

    public void setBlogID(int BlogID) {
        this.blogID = BlogID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
    
    