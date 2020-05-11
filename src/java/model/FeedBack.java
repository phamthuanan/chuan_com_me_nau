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
public class FeedBack {
    private int febId;
    private String userNameFeb;
    private String userEmailFeb;
    private int topic;
    private String febMesseges;
    private Date dateFeb;

    public FeedBack(){
        
    }
    public FeedBack(int febId, String userNameFeb, String userEmailFeb, int topic, String febMesseges, Date dateFeb) {
        this.febId = febId;
        this.userNameFeb = userNameFeb;
        this.userEmailFeb = userEmailFeb;
        this.topic = topic;
        this.febMesseges = febMesseges;
        this.dateFeb = dateFeb;
    }

    public int getFebId() {
        return febId;
    }

    public void setFebId(int febId) {
        this.febId = febId;
    }

    public String getUserNameFeb() {
        return userNameFeb;
    }

    public void setUserNameFeb(String userNameFeb) {
        this.userNameFeb = userNameFeb;
    }

    public String getUserEmailFeb() {
        return userEmailFeb;
    }

    public void setUserEmailFeb(String userEmailFeb) {
        this.userEmailFeb = userEmailFeb;
    }

    public int getTopic() {
        return topic;
    }

    public void setTopic(int topic) {
        this.topic = topic;
    }

    public String getFebMesseges() {
        return febMesseges;
    }

    public void setFebMesseges(String febMesseges) {
        this.febMesseges = febMesseges;
    }

    public Date getDateFeb() {
        return dateFeb;
    }

    public void setDateFeb(Date dateFeb) {
        this.dateFeb = dateFeb;
    }
    
    
    
}
