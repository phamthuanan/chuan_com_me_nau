/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 *
 * @author Tien Anh
 */
public class User {
    private int userId;
    private String userName ;
    private String userEmail;
    private String userPass;
    private String userPhone;
    private String userAddress;
//    private String md5(String passwordToHash){
//        String generatedPassword = null;
//     try {
//        // Create MessageDigest instance for MD5
//            MessageDigest md = MessageDigest.getInstance("MD5");
//        //Add password bytes to digest
//            md.update(passwordToHash.getBytes());
//        //Get the hash's bytes
//            byte[] bytes = md.digest();
//        //This bytes[] has bytes in decimal format;
//        //Convert it to hexadecimal format
//            StringBuilder sb = new StringBuilder();
//            for(int i=0; i< bytes.length ;i++)
//            {
//                sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
//            }
//        //Get complete hashed password in hex format
//            generatedPassword = sb.toString();
//           }
//        catch (NoSuchAlgorithmException e)
//        {
//            e.printStackTrace();
//        }
//       return generatedPassword;
// 
//    }
    
    public User(){
        
    }

    public User(int user_id, String username, String useremail, String password, String phone, String address) {
        this.userId = user_id;
        this.userName = username;
        this.userEmail = useremail;
        this.userPass = (password);
        this.userPhone = phone;
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

    public String getUserPass() {
        return userPass;
    }

    public void setUserPass(String userPass) {
        this.userPass = (userPass);
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }
    
    
}
