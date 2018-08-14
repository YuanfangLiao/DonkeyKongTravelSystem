/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.donkey.dao;

import com.donkey.model.FeedBack;
import com.donkey.model.User;
import com.donkey.model.Food;
import com.donkey.model.Groups;
import com.donkey.model.HotelOrder;
import com.donkey.model.id;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import javax.enterprise.inject.New;
import javax.transaction.Transactional;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author n551
 */
@Repository
public class UserDAOImpl implements UserDAO {

    @Autowired
    SessionFactory factory;

    @Override
    public void insert(User newUser) {
        Session session = factory.getCurrentSession();
        session.save(newUser);
    }

    @Override
    public User checkUserByID(String id) {
        Session session = factory.getCurrentSession();
        return (User) session.get(User.class, id);
    }

    @Override
    public ArrayList<id> getID() {
        Session session = factory.getCurrentSession();
        String queryString = "from id";
        Query query = session.createQuery(queryString);
        ArrayList<id> list = (ArrayList<id>) query.list();
        return list;
    }

    @Override
    public void updateID(String id) {
        Session session = factory.getCurrentSession();
        String queryString = "update id id set id.id=:id where id.temp=1";
        Query query = session.createQuery(queryString);
        query.setString("id", id);
        query.executeUpdate();
    }

    @Override
    public ArrayList<Groups> getAllYourGroups(String id) {
        Session session = factory.getCurrentSession();
//        Criteria criteria = session.createCriteria(Groups.class);
//        createCriteria = createCriteria.add(Restrictions.eq("user_id", id));
//        List<Groups> list = criteria.list();
////        ArrayList<Groups> groupList=new ArrayList<Groups>(list);
//        for (Groups g : list) {
//            System.out.println(g);
//        }
        String queryString = "from Groups where user_id=?";
//       Groups group=new Groups();
//       group.setIsValid("是");
//       session.save(group);
        Query query = session.createQuery(queryString);
        query.setString(0, id);
        ArrayList<Groups> list = (ArrayList<Groups>) query.list();
        return list;

    }

    @Override
    public ArrayList<Groups> getValidGroups() {
        Session session = factory.getCurrentSession();

        String queryString = "from Groups where isValid=?";
        Query query = session.createQuery(queryString);
        query.setString(0, "是");
        ArrayList<Groups> list = (ArrayList<Groups>) query.list();
        return list;

    }

    @Override
    public ArrayList<HotelOrder> getHotelById(String id) {
        Session session = factory.getCurrentSession();
        String queryString = "from HotelOrder where user_id=?";//get all users from database
        //from which class do you need the information
        Query query = session.createQuery(queryString);
        query.setString(0, id);
        ArrayList<HotelOrder> list = (ArrayList<HotelOrder>) query.list();
        return list;
    }

    @Override
    public void updateHotelOrder(int hotel_order_id, int hotel_id, Date date) {
        Session session = factory.getCurrentSession();
        HotelOrder changedHotelOrder = (HotelOrder) session.get(HotelOrder.class, hotel_order_id);
        changedHotelOrder.setHotel_id(hotel_id);
        changedHotelOrder.setOrder_date(date);
        session.update(changedHotelOrder);
    }

    @Override
    public HotelOrder checkHotelOrderByID(int id) {
        Session session = factory.getCurrentSession();
        return (HotelOrder) session.get(HotelOrder.class, id);
    }

    @Override
    public void deleteHotelOrder(int hotel_order_id) {
        Session session = factory.getCurrentSession();
        String hql = "Delete FROM HotelOrder Where hotel_order_id=?";
        Query q = session.createQuery(hql);
        q.setInteger(0, hotel_order_id);
        q.executeUpdate();
    }

    @Override
    public String orderHotel(HotelOrder hotelOrder) {
        Session session = factory.getCurrentSession();

        Date now = new Date();
        Date oneDayBefore = new Date();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(now);
        calendar.add(Calendar.DAY_OF_MONTH, -1);
        oneDayBefore = calendar.getTime();
        Date orderDate = hotelOrder.getOrder_date();
        if (oneDayBefore.before(orderDate) == true) {
            session.save(hotelOrder);
            return "0";
        } else {
            return "1";
        }
    }
//    public static void main(String[] args) {
////        new XmlWebConfigApplicationContext();
//    }

    @Override
    public void publishGroup(Groups group) {
        Session session = factory.getCurrentSession();
        session.save(group);
    }

    public static void main(String[] args) {

        System.out.println("success");
    }

    @Override
    public void sendFeed(FeedBack feedback) {
        Session session = factory.getCurrentSession();
        session.save(feedback);
    }
}
