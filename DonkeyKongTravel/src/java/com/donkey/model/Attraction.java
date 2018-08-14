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
public class Attraction implements java.io.Serializable {

    private int att_id;
    private String name;
    private int location_id;
    private int num_like;

    public Attraction() {
    }

    public Attraction(int att_id, String name, int location_id, int num_like) {
        this.att_id = att_id;
        this.name = name;
        this.location_id = location_id;
        this.num_like = num_like;
    }

    public int getAtt_id() {
        return att_id;
    }

    public void setAtt_id(int att_id) {
        this.att_id = att_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getLocation_id() {
        return location_id;
    }

    public void setLocation_id(int location_id) {
        this.location_id = location_id;
    }

    public int getNum_like() {
        return num_like;
    }

    public void setNum_like(int num_like) {
        this.num_like = num_like;
    }

}
