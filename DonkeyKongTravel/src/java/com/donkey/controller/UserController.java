/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.donkey.controller;

import com.donkey.model.Attraction;
import com.donkey.model.FeedBack;
import com.donkey.model.Groups;
import com.donkey.model.HotelOrder;
import com.donkey.model.User;
import com.donkey.model.id;
import com.donkey.service.UserService;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import static org.springframework.web.bind.annotation.RequestMethod.POST;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author n551
 */
@Controller
@RequestMapping
public class UserController {

    @Autowired
    public UserService service;

    @ResponseBody
    @RequestMapping(value = "/login.do", method = RequestMethod.POST)
    public String login(String id, String password) throws IOException {
        User user = service.checkUserByID(id);

        String event = null;
        if (user != null) {
            //该用户存在
            if (user.getPassword().equals(password)) {
                //密码正确
                if (user.getIsValid().equals("是")) {
                    service.updateID(id);
                    event = "0";
                } else {
                    //用户被禁用
                    event = "3";
                }
            } else {
                //密码错误
                event = "1";
            }
        } else {
            // 用户不存在
            event = "2";
        }

        return event;
    }

    @RequestMapping(value = "/register.htm", method = RequestMethod.POST)
    public String register(User newuser) {
        User user = service.checkUserByID(newuser.getId());
        if (user != null) {
            return "Existed";
        } else {
            service.addUser(newuser);
            return "redirect:/login.htm";
        }
    }

    @RequestMapping(value = "/manageYourGroupTravel.htm")
    public String ShowYourGroupTravel(ModelMap model) {
        ArrayList<id> list = service.getID();
        String id = list.get(0).getId();
        ArrayList<Groups> groupList = service.getAllYourGroups(id);
        model.addAttribute("allGroups", groupList);
        return "manageYourGroupTravel";
    }

    @RequestMapping(value = "/groups.htm")
    public String ShowValidGroups(ModelMap model) {
//        ArrayList<id> list = service.getID();
//        String id = list.get(0).getId();
        ArrayList<Groups> groupList = service.getValidGroups();
        model.addAttribute("allGroups", groupList);
        return "groups";
    }

    @RequestMapping(value = "/manageOrderHotel.htm")
    public String showManageOrderHotel(ModelMap model) {
        ArrayList<id> list = service.getID();
        String id = list.get(0).getId();
        ArrayList<HotelOrder> hotelorderlist = service.getYourHotelOrders(id);
        model.addAttribute("allhotelorderlist", hotelorderlist);
        return "manageOrderHotel";
    }

    @ResponseBody
    @RequestMapping(value = "/updateHotelOrder.do", method = RequestMethod.POST)
    public String updateHotelOrder(int hotelorderid, String userid, int hotelid, @DateTimeFormat(pattern = "yyyy-MM-dd") Date date) {
        String event = null;
//        ArrayList<id> list = service.getID();
//        String id = list.get(0).getId();
        HotelOrder hotelOrder = service.checkHotelOrderByID(hotelorderid);
        Date now = new Date();
        Date oneDayBefore = new Date();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(now);
        calendar.add(Calendar.DAY_OF_MONTH, -1);
        oneDayBefore = calendar.getTime();
        if (oneDayBefore.before(date) == false) {
            event = "1";
        } else {
            if (hotelOrder != null) {
                service.updateHotelOrder(hotelorderid, hotelid, date);
                event = "0";
            } else {
                event = "1";
            }
        }
        return event;

    }

    @ResponseBody
    @RequestMapping(value = "/deleteHotelOrder.do", method = RequestMethod.POST)
    public String deleteAtt(int hotelorderid) {
        String event = null;
        HotelOrder hotelOrder = service.checkHotelOrderByID(hotelorderid);
        if (hotelOrder != null) {
            event = "0";
            service.deleteHotelOrder(hotelorderid);
        } else {
            event = "1";
        }

        return event;

    }

    @ResponseBody
    @RequestMapping(value = "/orderHotel.do", method = RequestMethod.POST)
    public String orderHotel(int hotelid, @DateTimeFormat(pattern = "yyyy-MM-dd") Date orderdate) {
        String event = null;
        ArrayList<id> list = service.getID();
        String id = list.get(0).getId();
        HotelOrder newHotelOrder = new HotelOrder();
        newHotelOrder.setUser_id(id);
        newHotelOrder.setHotel_id(hotelid);
        newHotelOrder.setOrder_date(orderdate);

        return service.orderHotel(newHotelOrder);
    }

//    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @RequestMapping(value = "/publishGroup.do", method = RequestMethod.POST)
    @ResponseBody
    public String publishGroup(String title, int att_id, int hotel_id, @DateTimeFormat(pattern = "yyyy-aa-dd") Date begin_date, @DateTimeFormat(pattern = "yyyy-aa-dd") Date end_date, int fee, int num_people, String trip_mode) {
        ArrayList<id> list = service.getID();
        String id = list.get(0).getId();
        Groups group = new Groups();
        group.setUser_id(id);
        group.setTitle(title);
        group.setAtt_id(att_id);     
        group.setHotel_id(hotel_id);
        group.setBegin_date(begin_date);
        group.setEnd_date(end_date);
        group.setFee(fee);
        group.setNum_people(num_people);
        group.setTrip_mode(trip_mode);
        service.publishGroup(group);
        String event = "0";
        return event;
    }
    
    
    @ResponseBody
    @RequestMapping(value = "/sendFeed.do", method = RequestMethod.POST)
    public String sendFeed(String title, String feed_info) {
        String event = null;
        
        FeedBack feedBack = new FeedBack();
        feedBack.setTitle(title);
        feedBack.setFeed_info(feed_info);

        service.sendFeed(feedBack);
        return "0";
        
    }

}
