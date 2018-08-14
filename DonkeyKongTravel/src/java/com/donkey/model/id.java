/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.donkey.model;

/**
 *
 * @author n551
 */
public class id {
    private String id;
    private int temp;

    public id() {
    }

    public id(String id, int temp) {
        this.id = id;
        this.temp = temp;
    }

    public int getTemp() {
        return temp;
    }

    public void setTemp(int temp) {
        this.temp = temp;
    }
    public String getId() {
        return id;
    }



    public void setId(String id) {
        this.id = id;
    }
}
