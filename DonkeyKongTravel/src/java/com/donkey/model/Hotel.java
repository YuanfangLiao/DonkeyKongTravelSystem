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
public class Hotel implements java.io.Serializable {

    public Hotel(int hotel_id, String name, int location_id, int price, int num_comments, int num_like) {
        this.hotel_id = hotel_id;
        this.name = name;
        this.location_id = location_id;
        this.price = price;
        this.num_comments = num_comments;
        this.num_like = num_like;
    }

    public Hotel() {
    }


    private int hotel_id;
    private String name;
    private int location_id;
    private int price;
    private int num_comments;
    private int num_like;

    public int getHotel_id() {
        return hotel_id;
    }

    public void setHotel_id(int hotel_id) {
        this.hotel_id = hotel_id;
    }

    public int getLocation_id() {
        return location_id;
    }

    public void setLocation_id(int location_id) {
        this.location_id = location_id;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getNum_comments() {
        return num_comments;
    }

    public void setNum_comments(int num_comments) {
        this.num_comments = num_comments;
    }

    public int getNum_like() {
        return num_like;
    }

    public void setNum_like(int num_like) {
        this.num_like = num_like;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
