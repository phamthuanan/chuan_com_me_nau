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
    private int reviewID;
    private int recipeID;
    private String reviewName;
    private String reviewEmail;
    private int reviewStar;
    private String reviewMessage;
    private Date reviewDate;

    public Review(){
        
    }
    public Review(int reviewID, int recipeID, String reviewName, String reviewEmail, int reviewStar, String reviewMessage, Date reviewDate) {
        this.reviewID = reviewID;
        this.recipeID = recipeID;
        this.reviewName = reviewName;
        this.reviewEmail = reviewEmail;
        this.reviewStar = reviewStar;
        this.reviewMessage = reviewMessage;
        this.reviewDate = reviewDate;
    }

    public int getReviewID() {
        return reviewID;
    }

    public void setReviewID(int reviewID) {
        this.reviewID = reviewID;
    }

    public int getRecipeID() {
        return recipeID;
    }

    public void setRecipeID(int recipeID) {
        this.recipeID = recipeID;
    }

    public String getReviewName() {
        return reviewName;
    }

    public void setReviewName(String reviewName) {
        this.reviewName = reviewName;
    }

    public String getReviewEmail() {
        return reviewEmail;
    }

    public void setReviewEmail(String reviewEmail) {
        this.reviewEmail = reviewEmail;
    }

    public int getReviewStar() {
        return reviewStar;
    }

    public void setReviewStar(int reviewStar) {
        this.reviewStar = reviewStar;
    }

    public String getReviewMessage() {
        return reviewMessage;
    }

    public void setReviewMessage(String reviewMessage) {
        this.reviewMessage = reviewMessage;
    }

    public Date getReviewDate() {
        return reviewDate;
    }

    public void setReviewDate(Date reviewDate) {
        this.reviewDate = reviewDate;
    }
    
}
