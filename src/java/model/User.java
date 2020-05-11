/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Pham An
 */
public class User {
    private int userId;
    private String userName ;
    private String userEmail;
    private int userPass;
    private int userPhone;
    private int userAddress;
    private int userGender;
    
    public User(){
        
    }
    public User(int userId, String userName, String userEmail, int userPass, int userPhone, int userAddress, int userGender) {
        this.userId = userId;
        this.userName = userName;
        this.userEmail = userEmail;
        this.userPass = userPass;
        this.userPhone = userPhone;
        this.userAddress = userAddress;
        this.userGender = userGender;
    }
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public int getUserPass() {
        return userPass;
    }

    public void setUserPass(int userPass) {
        this.userPass = userPass;
    }

    public int getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(int userPhone) {
        this.userPhone = userPhone;
    }

    public int getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(int userAddress) {
        this.userAddress = userAddress;
    }

    public int getuserGender() {
        return userGender;
    }

    public void setuserGender(int userGender) {
        this.userGender = userGender;
    }

    
  
    
    
}
