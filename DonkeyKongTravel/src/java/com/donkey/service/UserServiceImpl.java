/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.donkey.service;

import com.donkey.dao.UserDAO;
import com.donkey.model.Attraction;
import com.donkey.model.FeedBack;
import com.donkey.model.Groups;
import com.donkey.model.HotelOrder;
import com.donkey.model.User;
import com.donkey.model.id;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author n551
 */
@Transactional
@Service
//UserServiceImpl userServiceImpl = new UserServiceImpl()
public class UserServiceImpl implements UserService {

    @Autowired
    UserDAO dao;

    @Override
    public void addUser(User newUser) {
        newUser.setCreate_date(new Date());
        newUser.setIsValid("是");
        newUser.setLevel(1);
        dao.insert(newUser);
    }

    @Override
    public User checkUserByID(String id) {
        User user = dao.checkUserByID(id);
        return user;
    }

    @Override
    public User loginUser(String id, String password) {
        User user = dao.checkUserByID(id);
        if (user != null) {
            return user;
        } else {
            return null;
        }
    }

    @Override
    public ArrayList<id> getID() {
        ArrayList<id> list= dao.getID();
        return list;
    }
    
    @Override
    public void updateID(String id){
        dao.updateID(id);
    }
    
     @Override
    public ArrayList<Groups> getAllYourGroups(String id) {
        ArrayList<Groups> list = dao.getAllYourGroups(id);
        return list;

    }
         @Override
    public ArrayList<Groups> getValidGroups() {
        ArrayList<Groups> list = dao.getValidGroups();
        return list;

    }

    @Override
    public ArrayList<HotelOrder> getYourHotelOrders(String id) {
        ArrayList<HotelOrder> list = dao.getHotelById(id);
        return list;
    }

    @Override
    public void updateHotelOrder(int hotel_order_id,int hotel_id, Date date) {
        dao.updateHotelOrder(hotel_order_id,hotel_id,date);
    }

    @Override
    public HotelOrder checkHotelOrderByID(int id) {
        HotelOrder hotelOrder = dao.checkHotelOrderByID(id);
        return hotelOrder;
    }

    @Override
    public void deleteHotelOrder(int hotelorderid) {
        dao.deleteHotelOrder(hotelorderid);
    }

    @Override
    public String orderHotel(HotelOrder hotelOrder) {
        return dao.orderHotel(hotelOrder);
    }
    
    @Override
    public void publishGroup(Groups group){
        group.setIsValid("否");
        dao.publishGroup(group);
    }
    
    @Override
    public void sendFeed(FeedBack feedBack) {
        dao.sendFeed(feedBack);
    }
}
