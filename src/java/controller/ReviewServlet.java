/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import get.ReviewGet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Review;

/**
 *
 * @author Pham An
 */
public class ReviewServlet extends HttpServlet {
ReviewGet reviewGet = new ReviewGet();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        
        int reviewId = (int) new java.util.Date().getTime();
        int recipeId = Integer.parseInt(request.getParameter("recipeId"));
        int userId = Integer.parseInt(request.getParameter("userId"));
        String mess = request.getParameter("text-comment");
   
        String url = "", error = "";
        if (mess.equals("")) {
            error = "Vui lòng nhập nội dung bình luận!";
            request.setAttribute("error", error);
        }

        try {
            if (error.length() == 0) {
                    
                        reviewGet.insertReview(new Review(reviewId,recipeId,userId,mess));
                        url = "/chuancommenau/RecipeDetail.jsp?recipeId="+recipeId+"";
                       
            }else
            {
                url = "/chuancommenau/RecipeDetail.jsp?recipeId="+recipeId+"";
            }
                
        } catch (Exception e) {
        }
        response.sendRedirect(url);
    }

}
