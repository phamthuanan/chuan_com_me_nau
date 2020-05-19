/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;

/**
 *
 * @author Pham An
 */
public class Review {
    private int reviewId;
    private int recipeId;
    private int userIdReview;
    private String reviewMessenges;
    private Date reviewDate;

    public Review(){
        
    }
    public Review(int reviewId, int recipeId, int userIdReview, String reviewMessenges, Date reviewDate) {
        this.reviewId = reviewId;
        this.recipeId = recipeId;
        this.userIdReview = userIdReview;
        this.reviewMessenges = reviewMessenges;
        this.reviewDate = reviewDate;
    }

    public int getReviewId() {
        return reviewId;
    }

    public void setReviewId(int reviewId) {
        this.reviewId = reviewId;
    }

    public int getRecipeId() {
        return recipeId;
    }

    public void setRecipeId(int recipeId) {
        this.recipeId = recipeId;
    }

    public int getUserIdReview() {
        return userIdReview;
    }

    public void setUserIdReview(int userIdReview) {
        this.userIdReview = userIdReview;
    }

    public String getReviewMessenges() {
        return reviewMessenges;
    }

    public void setReviewMessenges(String reviewMessenges) {
        this.reviewMessenges = reviewMessenges;
    }

    public Date getReviewDate() {
        return reviewDate;
    }

    public void setReviewDate(Date reviewDate) {
        this.reviewDate = reviewDate;
    }

    
    
}
