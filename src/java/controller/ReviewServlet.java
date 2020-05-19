/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import get.ReviewGet;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Review;
import model.User;

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
        Review review = new Review();       
     
        review.setReviewId((int) new java.util.Date().getTime());
        review.setRecipeId(Integer.parseInt(request.getParameter("recipeId")));
        review.setUserIdReview(Integer.parseInt(request.getParameter("userId")));
        review.setReviewMessenges(request.getParameter("text-comment"));
        review.setReviewDate(new java.util.Date());
        
        String url = "", error = "";
        if (review.getReviewMessenges().equals("")) {
            error = "Vui lòng nhập nội dung bình luận!";
            request.setAttribute("error", error);
        }

        try {
            if (error.length() == 0) {
                    
                        reviewGet.insertReview(review);
                       
            }url = "/chuancommenau/RecipeDetail.jsp?recipeId="+review.getRecipeId()+"";
                
        } catch (Exception e) {
        }
        response.sendRedirect(url);
    }

}
