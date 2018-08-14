/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.donkey.controller;

import com.donkey.model.User;
import com.donkey.model.Attraction;
import com.donkey.model.FeedBack;
import com.donkey.model.Food;
import com.donkey.model.Groups;
import com.donkey.model.Hotel;
import com.donkey.model.id;
import com.donkey.service.AdminService;
import com.donkey.service.UserService;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author n551
 */
@Controller
//@Component
public class AdminController {

    @Autowired
    AdminService service;
    @Autowired
    UserService uService;

    @ResponseBody
    @RequestMapping(value = "/changePassword.do", method = RequestMethod.POST)
    public String changePassword(String oldPassword, String newPassword, String newPassword2) {
        ArrayList<id> list = uService.getID();
        String id = list.get(0).getId();
        User user = service.checkUserByID(id);

        String event = null;
        if (user.getPassword().equals(oldPassword)) {
            if (oldPassword.equals(newPassword)) {
                event = "2";
            } else if (!newPassword.equals(newPassword2)) {
                event = "3";
            } else {
                service.changePassword(id, newPassword);
                event = "0";

            }
        } else {
            event = "1";
        }

        return event;

    }

    @RequestMapping(value = "/searchPage.htm")
    public String ShowSearchPage(ModelMap model) {
        ArrayList<Attraction> attlist = service.getALLAttractions();
        model.addAttribute("allattractions", attlist);
        ArrayList<Food> foodlist = service.getALLFood();
        model.addAttribute("allfood", foodlist);
        ArrayList<Hotel> hotellist = service.getALLHotel();
        model.addAttribute("allhotels", hotellist);
        return "searchPage";
    }

    @RequestMapping(value = "/manageUsers.htm")
    public String ShowAllUsers(ModelMap model) {
//        ArrayList<id> list = uService.getID();
//        String id = list.get(0).getId();
//        User user = service.checkUserByID(id);
//        model.addAttribute("user", user);
        ArrayList<User> userlist = service.getALLUsers();
        model.addAttribute("allusers", userlist);
        return "manageUsers";
    }

    @RequestMapping(value = "/manageAttractions.htm")
    public String ShowAllAttraction(ModelMap model) {
        ArrayList<Attraction> list = service.getALLAttractions();
        model.addAttribute("allattractions", list);
        return "manageAttractions";
    }

    @ResponseBody
    @RequestMapping(value = "/deleteUser.do", method = RequestMethod.POST)
    public String deleteUser(String userid) {
        String event = null;
        User user = service.checkUserByID(userid);
        if (user != null) {
            event = "0";
            service.deleteUser(userid);
        } else {
            event = "1";
        }

        return event;

    }

    @ResponseBody
    @RequestMapping(value = "/deleteAtt.do", method = RequestMethod.POST)
    public String deleteAtt(Integer attid) {
        String event = null;
        Attraction att = service.checkAttByID(attid);
        if (att != null) {
            event = "0";
            service.deleteAtt(attid);
        } else {
            event = "1";
        }

        return event;

    }

    @ResponseBody
    @RequestMapping(value = "/deleteHotel.do", method = RequestMethod.POST)
    public String deleteHotel(Integer hotel_id) {
        String event = null;
        Hotel hotel = service.checkHotelByID(hotel_id);
        if (hotel != null) {
            event = "0";
            service.deleteHotel(hotel_id);
        } else {
            event = "1";
        }

        return event;

    }

    @ResponseBody
    @RequestMapping(value = "/deleteFood.do", method = RequestMethod.POST)
    public String deleteFood(Integer food_id) {
        String event = null;
        Food food = service.checkFoodByID(food_id);
        if (food != null) {
            event = "0";
            service.deleteFood(food_id);
        } else {
            event = "1";
        }

        return event;

    }

    @ResponseBody
    @RequestMapping(value = "/deleteGroup.do", method = RequestMethod.POST)
    public String deleteGroup(Integer group_travel_id) {
        String event = null;
        Groups group = service.checkGroupByID(group_travel_id);
        if (group != null) {
            event = "0";
            service.deleteGroup(group_travel_id);
        } else {
            event = "1";
        }

        return event;

    }

    @ResponseBody
    @RequestMapping(value = "/banUser.do", method = RequestMethod.POST)
    public String banUser(String userid) {
        String event = null;
        User user = service.checkUserByID(userid);
        if (user != null) {
            if (user.getIsValid().equals("否")) {
                event = "2";
            } else {
                event = "0";
                service.banUser(userid);
            }

        } else {
            event = "1";
        }

        return event;

    }
    
        @ResponseBody
    @RequestMapping(value = "/banGroups.do", method = RequestMethod.POST)
    public String banGroups(int group_travel_id) {
        String event = null;
        Groups group = service.checkGroupByID(group_travel_id);
        if (group != null) {
            if (group.getIsValid().equals("否")) {
                event = "2";
            } else {
                event = "0";
                service.banGroup(group_travel_id);
            }

        } else {
            event = "1";
        }

        return event;

    }

    @ResponseBody
    @RequestMapping(value = "/validGroup.do", method = RequestMethod.POST)
    public String validUser(int group_travel_id) {
        String event = null;
        Groups group = service.checkGroupByID(group_travel_id);
        if (group != null) {
            if (group.getIsValid().equals("是")) {
                event = "2";
            } else {
                event = "0";
                service.validGroup(group_travel_id);
            }

        } else {
            event = "1";
        }

        return event;

    }

    @ResponseBody
    @RequestMapping(value = "/updateUser.do", method = RequestMethod.POST)
    public String updateUser(String id, String name, String title, @DateTimeFormat(pattern = "yyyy-MM-dd") Date date, int level) {
        String event = null;
        User user = service.checkUserByID(id);

        if (user != null) {
            service.updateUser(id, name, title, date, level);
            event = "0";
        } else {
            event = "1";
        }
        return event;

    }

    @ResponseBody
    @RequestMapping(value = "/updateAtt.do", method = RequestMethod.POST)
    public String updateAtt(int att_id, String name, int location_id, int num_like) {
        String event = null;
        Attraction att = service.checkAttByID(att_id);

        if (att != null) {
            service.updateAtt(att_id, name, location_id, num_like);
            event = "0";
        } else {
            event = "1";
        }
        return event;

    }

    @ResponseBody
    @RequestMapping(value = "/updateHotel.do", method = RequestMethod.POST)
    public String updateHotel(int id, String name, int location_id, int price, int num_comments, int num_like) {
        String event = null;
        Hotel hotel = service.checkHotelByID(id);

        if (hotel != null) {
            service.updateHotel(id, name, location_id, price, num_comments, num_like);
            event = "0";
        } else {
            event = "1";
        }
        return event;

    }

    @ResponseBody
    @RequestMapping(value = "/updateFood.do", method = RequestMethod.POST)
    public String updateFood(int id, String name, String type, int num_praise, int num_like) {
        String event = null;
        Food food = service.checkFoodByID(id);

        if (food != null) {
            service.updateFood(id, name, type, num_praise, num_like);
            event = "0";
        } else {
            event = "1";
        }
        return event;

    }

    @ResponseBody
    @RequestMapping(value = "/updateGroup.do", method = RequestMethod.POST)
    public String updateGroup(int group_travel_id, String title, String user_id, int att_id, int hotel_id, @DateTimeFormat(pattern = "yyyy-MM-dd") Date begin_date, @DateTimeFormat(pattern = "yyyy-MM-dd") Date end_date,
            int fee, int num_people, String trip_mode) {
        String event = null;
        Groups group = service.checkGroupByID(group_travel_id);

        if (group != null) {
            service.updateGroup(group_travel_id, title, user_id, att_id, hotel_id, begin_date, end_date, fee, num_people, trip_mode);
            event = "0";
        } else {
            event = "1";
        }
        return event;

    }

    @RequestMapping(value = "/manageFood.htm")
    public String ShowAllFoods(ModelMap model) {
        ArrayList<Food> list = service.getALLFood();
        model.addAttribute("allfood", list);
        return "manageFood";
    }

    @RequestMapping(value = "/manageHotel.htm")
    public String ShowAllHotel(ModelMap model) {
        ArrayList<Hotel> list = service.getALLHotel();
        model.addAttribute("allhotels", list);
        return "manageHotel";
    }

    @RequestMapping(value = "/groupTravel.htm")
    public String ShowAllGroupTravel(ModelMap model) {
        ArrayList<Groups> groupList = service.getAllGroups();
        model.addAttribute("allGroups", groupList);
        return "groupTravel";
    }
    
    
    @RequestMapping(value = "/viewFeedBack.htm")
    public String ShowAllFeedBack(ModelMap model) {
        ArrayList<FeedBack> feedBackList = service.getAllFeedBack();
        model.addAttribute("allFeedBack", feedBackList);
        return "viewFeedBack";
    }

    @ResponseBody
    @RequestMapping(value = "/deleteFeedBack.do", method = RequestMethod.POST)
    public String deleteFeedBack(int feed_id) {
        
        
        String event = "0";
        service.deleteFeedBack(feed_id);
        return event;

    }

}
