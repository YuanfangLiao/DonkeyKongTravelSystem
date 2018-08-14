/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.donkey.service;

import com.donkey.dao.AdminDAO;
import com.donkey.model.User;
import com.donkey.model.Attraction;
import com.donkey.model.FeedBack;
import com.donkey.model.Food;
import com.donkey.model.Groups;
import com.donkey.model.Hotel;
import java.util.ArrayList;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author n551
 */
@Transactional
@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    AdminDAO dao;

    @Override
    public void changePassword(String id, String newPassword) {
        dao.changePassword(id, newPassword);
    }

    @Override
    public User checkUserByID(String id) {
        User user = dao.checkUserByID(id);
        return user;
    }

    @Override
    public Attraction checkAttByID(int id) {
        Attraction att = dao.checkAttByID(id);
        return att;
    }

    @Override
    public Food checkFoodByID(int id) {
        Food food = dao.checkFoodByID(id);
        return food;
    }

    @Override
    public Groups checkGroupByID(int id) {
        Groups group = dao.checkGroupByID(id);
        return group;
    }

    @Override
    public void deleteUser(String id) {
        dao.deleteUser(id);
    }

    @Override
    public void deleteAtt(int id) {
        dao.deleteAtt(id);
    }

    @Override
    public void deleteHotel(int id) {
        dao.deleteHotel(id);
    }

    @Override
    public void deleteFood(int id) {
        dao.deleteFood(id);
    }

    @Override
    public void deleteGroup(int id) {
        dao.deleteGroup(id);
    }

    @Override
    public ArrayList<User> getALLUsers() {
        ArrayList<User> list = dao.getAllUsers();
        return list;
    }

    @Override
    public ArrayList<Food> getALLFood() {
        ArrayList<Food> list = dao.getAllFood();
        return list;

    }

    @Override
    public ArrayList<Attraction> getALLAttractions() {
        ArrayList<Attraction> list = dao.getAllAttractions();
        return list;

    }

    @Override
    public ArrayList<Hotel> getALLHotel() {
        ArrayList<Hotel> list = dao.getAllHotel();
        return list;
    }

    @Override
    public ArrayList<Groups> getAllGroups() {
        ArrayList<Groups> list = dao.getAllGroups();
        return list;
    }

    @Override
    public void banUser(String id) {
        dao.banUser(id);
    }
    
        @Override
    public void banGroup(int id) {
        dao.banGroup(id);
    }

    @Override
    public void validUser(String id) {
        dao.validUser(id);
    }
    
        @Override
    public void validGroup(int id) {
        dao.validGroup(id);
    }

    @Override
    public void updateUser(String id, String name, String title, Date date, int level) {
        dao.updateUser(id, name, title, date, level);
    }

    @Override
    public void updateAtt(int id, String name, int location_id, int num_like) {
        dao.updateAtt(id, name, location_id, num_like);
    }

    @Override
    public void updateHotel(int id, String name, int location_id, int price, int num_comments, int num_like) {
        dao.updateHotel(id, name, location_id, price, num_comments, num_like);
    }

    @Override
    public void updateFood(int id, String name, String type, int num_praise, int num_like) {
        dao.updateFood(id, name, type, num_praise, num_like);
    }

    @Override
    public void updateGroup(int group_travel_id, String title, String user_id, int att_id, int hotel_id, Date begin_date, Date end_date, int fee, int num_people, String trip_mode) {
        dao.updateGroup(group_travel_id, title, user_id, att_id, hotel_id, begin_date, end_date, fee, num_people, trip_mode);
    }

    @Override
    public Hotel checkHotelByID(int id) {
        Hotel hotel = dao.checkHotelByID(id);
        return hotel;
    }

    
    
    @Override
    public ArrayList<FeedBack> getAllFeedBack() {
        ArrayList<FeedBack> list = dao.getAllFeedBack();
        return list;
    }

    @Override
    public void deleteFeedBack(int feed_id) {
        dao.deleteFeedBack(feed_id);
    }

}
