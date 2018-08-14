/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.donkey.model;

import java.util.Date;

/**
 *
 * @author liao
 */
public class HotelOrder {
    private int hotel_order_id;
    private String user_id;
    private int hotel_id;
    private Date order_date;

    public HotelOrder(int hotel_order_id, String user_id, int hotel_id, Date order_date) {
        this.hotel_order_id = hotel_order_id;
        this.user_id = user_id;
        this.hotel_id = hotel_id;
        this.order_date = order_date;
    }

    public HotelOrder() {
    }
        
    public int getHotel_order_id() {
        return hotel_order_id;
    }

    public void setHotel_order_id(int hotel_order_id) {
        this.hotel_order_id = hotel_order_id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public int getHotel_id() {
        return hotel_id;
    }

    public void setHotel_id(int hotel_id) {
        this.hotel_id = hotel_id;
    }

    public Date getOrder_date() {
        return order_date;
    }

    public void setOrder_date(Date order_date) {
        this.order_date = order_date;
    }
    
    
}
