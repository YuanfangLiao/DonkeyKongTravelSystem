/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.donkey.dao;

import com.donkey.model.FeedBack;
import com.donkey.model.Groups;
import com.donkey.model.HotelOrder;
import com.donkey.model.User;
import com.donkey.model.id;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author n551
 */

public interface UserDAO {
    public void insert(User newUser);
    public User checkUserByID(String account);
    public ArrayList<id> getID();
    public void updateID(String id);
    public ArrayList<Groups> getAllYourGroups(String id);
    public ArrayList<Groups> getValidGroups();
    public ArrayList<HotelOrder> getHotelById(String id);
    public HotelOrder checkHotelOrderByID(int id);
    public void updateHotelOrder(int hotel_order_id,int hotel_id,Date date);
    public void deleteHotelOrder(int hotel_order_id);
    public String orderHotel(HotelOrder hotelOrder);
    public void publishGroup(Groups group);
    
    public void sendFeed(FeedBack feedback);
}
