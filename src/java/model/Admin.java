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
public class Admin {
    
    private int adminId ;
    private String adminName ;
    private int adminPass ;
    private int adminEmail ;

    public Admin(int adminId, String adminName, int adminPass, int adminEmial) {
        this.adminId = adminId;
        this.adminName = adminName;
        this.adminPass = adminPass;
        this.adminEmail = adminEmial;
    }
    public Admin(){
        
    }

    public int getAdminId() {
        return adminId;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public int getAdminPass() {
        return adminPass;
    }

    public void setAdminPass(int adminPass) {
        this.adminPass = adminPass;
    }

    public int getAdminEmail() {
        return adminEmail;
    }

    public void setAdminEmail(int adminEmial) {
        this.adminEmail = adminEmial;
    }

    
    
    
}
