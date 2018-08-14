/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.donkey.service;

import com.donkey.model.User;
import com.donkey.model.Attraction;
import com.donkey.model.FeedBack;
import com.donkey.model.Food;
import com.donkey.model.Groups;
import com.donkey.model.Hotel;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author n551
 */
public interface AdminService {

    public void changePassword(String id, String newPassword);

    public User checkUserByID(String id);

    public Attraction checkAttByID(int id);

    public Food checkFoodByID(int id);

    public Hotel checkHotelByID(int id);

    public Groups checkGroupByID(int id);

    public ArrayList<User> getALLUsers();

    public ArrayList<Food> getALLFood();

    public ArrayList<Attraction> getALLAttractions();

    public ArrayList<Hotel> getALLHotel();

    public ArrayList<Groups> getAllGroups();

    public void deleteUser(String id);

    public void deleteAtt(int id);

    public void deleteHotel(int id);

    public void deleteFood(int id);

    public void deleteGroup(int id);

    public void banUser(String id);

    public void banGroup(int id);

    public void validUser(String id);

    public void validGroup(int id);

    public void updateUser(String id, String name, String title, Date date, int level);

    public void updateAtt(int id, String name, int location_id, int num_like);

    public void updateHotel(int id, String name, int location_id, int price, int num_comments, int num_like);

    public void updateFood(int id, String name, String type, int num_praise, int num_like);

    public void updateGroup(int group_travel_id, String title, String user_id, int att_id, int hotel_id, Date begin_date, Date end_date, int fee, int num_people, String trip_mode);
    
    
    public ArrayList<FeedBack> getAllFeedBack();
    
    public void deleteFeedBack(int feed_id);
}
