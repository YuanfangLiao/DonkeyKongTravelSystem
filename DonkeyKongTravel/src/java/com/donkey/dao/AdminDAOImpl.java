/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.donkey.dao;

import com.donkey.model.User;
import com.donkey.model.Attraction;
import com.donkey.model.FeedBack;
import com.donkey.model.Food;
import com.donkey.model.Groups;
import com.donkey.model.Hotel;
import java.util.ArrayList;
import java.util.Date;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author n551
 */
@Repository
public class AdminDAOImpl implements AdminDAO {

    @Autowired
    SessionFactory factory;

    @Override
    public User checkUserByID(String id) {
        Session session = factory.getCurrentSession();
        return (User) session.get(User.class, id);
    }

    @Override
    public Attraction checkAttByID(int id) {
        Session session = factory.getCurrentSession();
        return (Attraction) session.get(Attraction.class, id);
    }

    @Override
    public Hotel checkHotelByID(int id) {
        Session session = factory.getCurrentSession();
        return (Hotel) session.get(Hotel.class, id);
    }

    @Override
    public Food checkFoodByID(int id) {
        Session session = factory.getCurrentSession();
        return (Food) session.get(Food.class, id);
    }

    @Override
    public Groups checkGroupByID(int id) {
        Session session = factory.getCurrentSession();
        return (Groups) session.get(Groups.class, id);
    }

    @Override
    public void changePassword(String id, String newPassword) {
        Session session = factory.getCurrentSession();
        User changedUser = (User) session.get(User.class, id);
        changedUser.setPassword(newPassword);
        session.update(changedUser);
    }

    @Override
    public ArrayList<User> getAllUsers() {
        Session session = factory.getCurrentSession();
        String queryString = "from User";//get all users from database
        //from which class do you need the information
        Query query = session.createQuery(queryString);
        ArrayList<User> list = (ArrayList<User>) query.list();
        return list;

    }

    @Override
    public ArrayList<Food> getAllFood() {
        Session session = factory.getCurrentSession();
        String queryString = "from Food";//get all users from database
        //from which class do you need the information
        Query query = session.createQuery(queryString);
        ArrayList<Food> list = (ArrayList<Food>) query.list();
        return list;
    }

    @Override
    public ArrayList<Attraction> getAllAttractions() {
        Session session = factory.getCurrentSession();
        String queryString = "from Attraction";//get all users from database
        //from which class do you need the information
        Query query = session.createQuery(queryString);
        ArrayList<Attraction> list = (ArrayList<Attraction>) query.list();
        return list;
    }

    @Override
    public ArrayList<Hotel> getAllHotel() {
        Session session = factory.getCurrentSession();
        String queryString = "from Hotel";//get all users from database
        //from which class do you need the information
        Query query = session.createQuery(queryString);
        ArrayList<Hotel> list = (ArrayList<Hotel>) query.list();
        return list;
    }

    @Override
    public ArrayList<Groups> getAllGroups() {
        Session session = factory.getCurrentSession();
        String queryString = "from Groups";//get all users from database
        //from which class do you need the information
        Query query = session.createQuery(queryString);
        ArrayList<Groups> list = (ArrayList<Groups>) query.list();
        return list;
    }

    @Override
    public void deleteUser(String id) {
        Session session = factory.getCurrentSession();
        String hql = "Delete FROM User Where id=?";
        Query q = session.createQuery(hql);
        q.setString(0, id);
        q.executeUpdate();
    }

    @Override
    public void deleteAtt(int id) {
        Session session = factory.getCurrentSession();
        String hql = "Delete FROM Attraction Where att_id=?";
        Query q = session.createQuery(hql);
        q.setInteger(0, id);
        q.executeUpdate();
    }

    @Override
    public void deleteHotel(int id) {
        Session session = factory.getCurrentSession();
        String hql = "Delete FROM Hotel Where hotel_id=?";
        Query q = session.createQuery(hql);
        q.setInteger(0, id);
        q.executeUpdate();
    }

    @Override
    public void deleteFood(int id) {
        Session session = factory.getCurrentSession();
        String hql = "Delete FROM Food Where food_id=?";
        Query q = session.createQuery(hql);
        q.setInteger(0, id);
        q.executeUpdate();
    }

    @Override
    public void deleteGroup(int id) {
        Session session = factory.getCurrentSession();
        String hql = "Delete FROM Groups Where group_travel_id=?";
        Query q = session.createQuery(hql);
        q.setInteger(0, id);
        q.executeUpdate();
    }

    @Override
    public void banUser(String id) {
        Session session = factory.getCurrentSession();
        User changedUser = (User) session.get(User.class, id);
        changedUser.setIsValid("否");
        session.update(changedUser);
    }

    @Override
    public void banGroup(int id) {
        Session session = factory.getCurrentSession();
        Groups changedGroup = (Groups) session.get(Groups.class, id);
        changedGroup.setIsValid("否");
        session.update(changedGroup);
    }

    @Override
    public void validUser(String id) {
        Session session = factory.getCurrentSession();
        User changedUser = (User) session.get(User.class, id);
        changedUser.setIsValid("是");
        session.update(changedUser);
    }
    
        @Override
    public void validGroup(int id) {
        Session session = factory.getCurrentSession();
        Groups group = (Groups) session.get(Groups.class, id);
        group.setIsValid("是");
        session.update(group);
    }

    @Override
    public void updateUser(String id, String name, String title, Date date, int level) {
        Session session = factory.getCurrentSession();
        User changedUser = (User) session.get(User.class, id);
        changedUser.setId(id);
        changedUser.setName(name);
        changedUser.setTitle(title);
        changedUser.setCreate_date(date);
        changedUser.setLevel(level);
        session.update(changedUser);
    }

    @Override
    public void updateAtt(int id, String name, int location_id, int num_like) {
        Session session = factory.getCurrentSession();
        Attraction att = (Attraction) session.get(Attraction.class, id);
        att.setAtt_id(id);
        att.setName(name);
        att.setLocation_id(location_id);
        att.setNum_like(num_like);
        session.update(att);
    }

    @Override
    public void updateHotel(int id, String name, int location_id, int price, int num_comments, int num_like) {
        Session session = factory.getCurrentSession();
        Hotel hotel = (Hotel) session.get(Hotel.class, id);
        hotel.setHotel_id(id);
        hotel.setName(name);
        hotel.setLocation_id(location_id);
        hotel.setPrice(price);
        hotel.setNum_comments(num_comments);
        hotel.setNum_like(num_like);
        session.update(hotel);
    }

    @Override
    public void updateFood(int id, String name, String type, int num_praise, int num_like) {
        Session session = factory.getCurrentSession();
        Food food = (Food) session.get(Food.class, id);
        food.setName(name);
        food.setFood_id(id);
        food.setType(type);
        food.setNum_praise(num_praise);
        food.setNum_like(num_like);
        session.update(food);
    }

    @Override
    public void updateGroup(int group_travel_id, String title, String user_id, int att_id, int hotel_id, Date begin_date, Date end_date, int fee, int num_people, String trip_mode) {
        Session session = factory.getCurrentSession();
        Groups group = (Groups) session.get(Groups.class, group_travel_id);
        group.setGroup_travel_id(group_travel_id);
        group.setTitle(title);
        group.setUser_id(user_id);
        group.setAtt_id(att_id);
        group.setHotel_id(hotel_id);
        group.setBegin_date(begin_date);
        group.setEnd_date(end_date);
        group.setFee(fee);
        group.setNum_people(num_people);
        group.setTrip_mode(trip_mode);
        session.update(group);
    }
    
    
    
    @Override
    public ArrayList<FeedBack> getAllFeedBack() {
        Session session = factory.getCurrentSession();
        String queryString = "from FeedBack";//get all users from database
        //from which class do you need the information
        Query query = session.createQuery(queryString);
        ArrayList<FeedBack> list = (ArrayList<FeedBack>) query.list();
        return list;

    }

    @Override
    public void deleteFeedBack(int feed_id) {
        Session session = factory.getCurrentSession();
        String hql = "Delete FROM FeedBack Where feed_id=?";
        Query q = session.createQuery(hql);
        q.setInteger(0, feed_id);
        q.executeUpdate();
    }
    
}
