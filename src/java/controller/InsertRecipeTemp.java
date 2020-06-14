/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


import get.RecipeGet;
import get.RecipeTempGet;

import java.io.IOException;

import java.sql.SQLException;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Recipe;
import model.RecipeTemp;

/**
 *
 * @author ACER
 */


public class InsertRecipeTemp extends HttpServlet{
    //kết nối 
        RecipeTemp recipeTemp = new RecipeTemp();
         RecipeGet recipeGet = new RecipeGet();
         RecipeTempGet recipe = new RecipeTempGet();
     // thư mục lưu file sau khi upload



    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        
    }
     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
     //xử lí request
     request.setCharacterEncoding("utf-8");
     
      // kiểm tra nếu yêu cầu thực sự có hành động upload file
  
        String url ="";
       
      
     //lấy dữ liệu từ các trường nhập liệu
     int recipe_id = recipeTemp.getRecipeId();
     int view = recipeTemp.getRecipeViews();
     String nameRecipe = recipeTemp.getRecipeName();
     int  catogoryId = recipeTemp.getCategoryId();
     int calo = recipeTemp.getRecipeCalories();
     String author = recipeTemp.getRecipeAuthor();
     String video = recipeTemp.getVideo();
     String nuti = recipeTemp.getNutritionIngredients();
     String ingredients = recipeTemp.getIngredientRecipe();
     String descriptionRecipe= recipeTemp.getDescriptionRecipe();
     String making = recipeTemp.getMaking();
     int userid = recipeTemp.getUserIdPostedRecipe();
     String img = recipeTemp.getRecipeImage();
     int check = 1;
     
        
        int count=1;
            try {
                for (Recipe r : recipeGet.getListRecipe()) {
                    r.getRecipeId();
                    count++;
                }
            } catch (SQLException ex) {
                Logger.getLogger(InsertRecipeTemp.class.getName()).log(Level.SEVERE, null, ex);
            }
     
        recipeGet.insertRecipe(new Recipe(count, nameRecipe, img, view , calo, author, catogoryId ,ingredients, nuti, making, descriptionRecipe, video, userid));
        recipe.updateRecipeCheck(check, userid);
        url ="/chuancommenau/admin/manage_user.jsp";
         response.sendRedirect(url);
    }


}

    


