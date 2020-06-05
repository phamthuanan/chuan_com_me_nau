/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package get;

import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Post;

/**
 *
 * @author Duong Nguyen
 */
public class PostGet {
    //Lấy danh sách các bài viết
    public ArrayList<Post> getListPost() throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM post " ;
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Post> list = new ArrayList<>();
        while (rs.next()) {
            
            Post post = new Post();
            post.setPost_id(rs.getInt("post_id"));
            post.setPost_name(rs.getString("post_name"));
            post.setPost_images(rs.getString("post_images"));
            post.setPost_views(rs.getInt("post_views"));
            post.setIngredient(rs.getString("ingredient"));
            post.setMaking(rs.getString("making"));
            post.setDescription_post(rs.getString("description_post"));
            post.setVideo(rs.getString("video"));
            post.setUser_id(rs.getInt("user_id"));
            list.add(post);
        }
        return list;
    }
    
    //Hiển thị chi tiết công thức
    public Post getPost(int postId) throws SQLException {
     Connection connection = DBConnect.getConnection();
     String sql = "SELECT * FROM post WHERE post_id = '" + postId + "'";
     PreparedStatement ps = connection.prepareCall(sql);
     ResultSet rs = ps.executeQuery();
     Post post = new Post();
     while (rs.next()) {
         
            post.setPost_id(rs.getInt("post_id"));
            post.setPost_name(rs.getString("post_name"));
            post.setPost_images(rs.getString("post_images"));
            post.setPost_views(rs.getInt("post_views"));
            post.setIngredient(rs.getString("ingredient"));
            post.setMaking(rs.getString("making"));
            post.setDescription_post(rs.getString("description_post"));
            post.setVideo(rs.getString("video"));
            post.setUser_id(rs.getInt("user_id"));
     }
     return post;
    }
}
