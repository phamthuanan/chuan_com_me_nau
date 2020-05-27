/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import connect.DBConnect;
import get.CategoryGet;
import get.RecipeGet;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import model.Recipe;
import org.apache.commons.fileupload.FileItem;
/**
 *
 * @author ACER
 */

@WebServlet("/images")
@MultipartConfig(maxFileSize = 16177215)
public class InsertRecipeServletx extends HttpServlet{
    //kết nối tới database
    
    private static final String UPLOAD_DIRECTORY= "images";
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        
    }
     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
     //xử lí request
     //lấy dữ liệu từ các trường nhập liệu tại form insert
     int view =0;
     String tenmon = request.getParameter("tenmon");
     int mact = Integer.parseInt(request.getParameter("macongthuc"));
     int calo = Integer.parseInt(request.getParameter("calo"));
     String tacgia = request.getParameter("tacgia");
     String video = request.getParameter("video");
     String dinhduong= request.getParameter("dinhduong");
     String thanhphan = request.getParameter("thanhphan");
     String motamon = request.getParameter("mota");
     String cachlam = request.getParameter("cachlam");
     int userid =0;
    //Xử lí hình
         InputStream inputStream = null;
          //input Stream of the upload file
         
        // obtains the upload file part in this multipart request
         Part filePart = request.getPart("hinh");
         if(filePart != null){
             //prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
            
        // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
            
    
         }
         
         //connect to database
         Connection conn = null;
         //message gửi thông báo
         String message = null;    
              
         try{
            conn = DBConnect.getConnection();
            
             //construct SQL statement
            String sql = "INSERT INTO recipe (recipe_id, recipe_name, category_id, recipe_image, recipe_views, calories, recipe_author, ingredients, nutritions, making, description_recipe, video, user_id) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
            
             PreparedStatement ps = conn.prepareStatement(sql);
             //chèn vào bảng recipe
                RecipeGet recipeGet = new RecipeGet();  
            CategoryGet categoryGet = new CategoryGet();
            ArrayList<Recipe> listRecipe;
        
            listRecipe = recipeGet.getListRecipe();
            int count =0;
                    for(Recipe recipe : listRecipe){
                        count++;    
                    }
             ps.setLong(1, count++);
             ps.setString(2, tenmon);
             ps.setInt(3,mact);
             if(inputStream != null)
             {
                 String filename = filePart.getSubmittedFileName();
                 ps.setString(4, UPLOAD_DIRECTORY +"/"+filename);
             }
             ps.setInt(5, view);
             ps.setInt(6, calo);
             ps.setString(7, tacgia);
             ps.setString(8, thanhphan);
             ps.setString(9, dinhduong);
             ps.setString(10, cachlam);
             ps.setString(11, motamon);
             ps.setString(12, video);
             ps.setInt(13, userid);
            
             //gửi thông tin về database
             int row = ps.executeUpdate();
             if(row > 0){
                 message = "Thông tin đã được lưu lại";
             }
         }
            catch(SQLException e){
                     message = "Lỗi: "+ e.getMessage();
                     e.printStackTrace();
             }
            finally{
                     if(conn != null){
                     //đóng database
                     try{
                     conn.close();
                     }
                     catch(SQLException e){
                     e.printStackTrace();
                     }
                }
            // sets the message in request scope
            request.setAttribute("Message", message);   
                     
            // forwards to the message page
            getServletContext().getRequestDispatcher("/admin/manage_product.jsp").forward(request, response);
            }
             
         }
         
        
         
    }
    


