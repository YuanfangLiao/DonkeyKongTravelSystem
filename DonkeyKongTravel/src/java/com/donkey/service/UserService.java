/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.donkey.service;

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
public interface UserService {

    public void addUser(User newUser);

    public User checkUserByID(String id);

    public User loginUser(String id, String password);

    public ArrayList<id> getID();

    public void updateID(String id);

    public ArrayList<Groups> getAllYourGroups(String id);

    public ArrayList<Groups> getValidGroups();

    public ArrayList<HotelOrder> getYourHotelOrders(String id);

    public HotelOrder checkHotelOrderByID(int id);

    public void updateHotelOrder(int hotelorderid, int hotel_id, Date date);

    public void deleteHotelOrder(int hotelorderid);

    public String orderHotel(HotelOrder hotelOrder);
    
    public void publishGroup(Groups group);
    
      public void sendFeed(FeedBack feedBack);

}
