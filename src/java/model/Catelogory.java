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
public class Catelogory {
    private int CatelogoryId;
    private String CatelogoryName;

    public Catelogory(){
        
    }
    public Catelogory(int CatelogoryId, String CatelogoryName) {
        this.CatelogoryId = CatelogoryId;
        this.CatelogoryName = CatelogoryName;
    }

    public int getCatelogoryId() {
        return CatelogoryId;
    }

    public void setCatelogoryId(int CatelogoryId) {
        this.CatelogoryId = CatelogoryId;
    }

    public String getCatelogoryName() {
        return CatelogoryName;
    }

    public void setCatelogoryName(String CatelogoryName) {
        this.CatelogoryName = CatelogoryName;
    }

    
}
