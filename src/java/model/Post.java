/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Duong Nguyen
 */
public class Post {
    private int post_id;
    private String post_name;
    private String post_images;
    private int post_views;
    private String ingredient;
    private String making;
    private String description_post;
    private String video;
    private int user_id;

    public Post(int post_id, String post_name, String post_images, int post_views, String ingredient, String making, String description_post, String video, int user_id) {
        this.post_id = post_id;
        this.post_name = post_name;
        this.post_images = post_images;
        this.post_views = post_views;
        this.ingredient = ingredient;
        this.making = making;
        this.description_post = description_post;
        this.video = video;
        this.user_id = user_id;
    }

    public Post() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int getPost_id() {
        return post_id;
    }

    public String getPost_name() {
        return post_name;
    }

    public String getPost_images() {
        return post_images;
    }

    public int getPost_views() {
        return post_views;
    }

    public String getIngredient() {
        return ingredient;
    }

    public String getMaking() {
        return making;
    }

    public String getDescription_post() {
        return description_post;
    }

    public String getVideo() {
        return video;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setPost_id(int post_id) {
        this.post_id = post_id;
    }

    public void setPost_name(String post_name) {
        this.post_name = post_name;
    }

    public void setPost_images(String post_images) {
        this.post_images = post_images;
    }

    public void setPost_views(int post_views) {
        this.post_views = post_views;
    }

    public void setIngredient(String ingredient) {
        this.ingredient = ingredient;
    }

    public void setMaking(String making) {
        this.making = making;
    }

    public void setDescription_post(String description_post) {
        this.description_post = description_post;
    }

    public void setVideo(String video) {
        this.video = video;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    
    
}
