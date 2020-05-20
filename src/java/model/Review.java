/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Timestamp;
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
    private Timestamp reviewDate;

    public Review(){
        
    }
    public Review(int reviewId, int recipeId, int userIdReview, String reviewMessenges) {
        this.reviewId = reviewId;
        this.recipeId = recipeId;
        this.userIdReview = userIdReview;
        this.reviewMessenges = reviewMessenges;
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

    public void setReviewDate(Timestamp reviewDate) {
        this.reviewDate = reviewDate;
    }

    
    
}
