/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.donkey.controller;

import com.donkey.model.User;
import com.donkey.model.Attraction;
import com.donkey.model.Food;
import com.donkey.model.Hotel;
import com.donkey.model.id;
import com.donkey.service.AdminService;
import com.donkey.service.UserService;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
//IndexController indexController = new IndexController();
public class IndexController {

//    @RequestMapping({"/", "/register.htm"})
//    public String showRegister() {
//        return "register";
//    }
    @Autowired
    UserService service;

    @Autowired
    AdminService adminService;

    @RequestMapping(value = "/index.htm")
    public String showIndex(ModelMap model) {
        ArrayList<id> list = service.getID();
        String id = list.get(0).getId();
        User user = service.checkUserByID(id);
        model.addAttribute("user", user);
        return "index";
    }

    @RequestMapping(value = "/login.htm")
    public String showLogin() {
        return "login";
    }

    @RequestMapping(value = "/register.htm")
    public String showRegister() {
        return "register";
    }

    @RequestMapping(value = "/aboutUs.htm")
    public String showAboutUs() {
        return "aboutUs";
    }


    @RequestMapping(value = "/changePassword.htm", method = RequestMethod.GET)
    public String showChangePassword(ModelMap model) {
        return "changePassword";
    }

    @RequestMapping(value = "/user_changePassword.htm", method = RequestMethod.GET)
    public String showChangeUserPassword(ModelMap model) {
        return "user_changePassword";
    }

    @ResponseBody
    @RequestMapping(value = "/background.do", method = RequestMethod.POST)
    public String showBackground() {
        ArrayList<id> list = service.getID();
        String id = list.get(0).getId();
        User user = service.checkUserByID(id);
        if (user.getTitle().equals("User")) {
            return "userBackground";
        } else {
            return "adminBackground";
        }
    }

    @RequestMapping(value = "/adminBackground.htm", method = RequestMethod.GET)
    public String showAdminBackground(ModelMap model) {
        ArrayList<id> list = service.getID();
        String id = list.get(0).getId();
        User user = service.checkUserByID(id);
        model.addAttribute("user", user);
        return "adminBackground";
    }

    @RequestMapping(value = "/userBackground.htm", method = RequestMethod.GET)
    public String showUserBackground(ModelMap model) {
        ArrayList<id> list = service.getID();
        String id = list.get(0).getId();
        User user = service.checkUserByID(id);
        model.addAttribute("user", user);
        return "userBackground";
    }


    @RequestMapping(value = "/manageYourTravel.htm", method = RequestMethod.GET)
    public String showManageYourTravel(ModelMap model) {
        return "manageYourTravel";
    }


    @RequestMapping(value = "/searchFunction.htm", method = RequestMethod.GET)
    public String showSearchFunction(ModelMap model) {
        return "searchFunction";
    }

    @RequestMapping(value = "/passwordDiffrent.htm", method = RequestMethod.GET)
    public String showpasswordDiffrent(ModelMap model) {
        return "passwordDiffrent";
    }

    @RequestMapping(value = "/errorPassword.htm", method = RequestMethod.GET)
    public String showerrorPassword(ModelMap model) {
        return "errorPassword";
    }

    @RequestMapping(value = "/enterNewPassword.htm", method = RequestMethod.GET)
    public String showenterNewPassword(ModelMap model) {
        return "enterNewPassword";
    }

    @RequestMapping(value = "/changeSuccess.htm", method = RequestMethod.GET)
    public String showchangeSuccess(ModelMap model) {
        return "changeSuccess";
    }

    @RequestMapping(value = "/Hotel.htm")
    public String showHotel() {
        return "Hotel";
    }

    @RequestMapping(value = "/qingdaoHotel.htm")
    public String showQingdaoHotel() {
        return "qingdaoHotel";
    }

    @RequestMapping(value = "/shanghaiHotel.htm")
    public String showShanghaiHotel() {
        return "shanghaiHotel";
    }

    @RequestMapping(value = "/hangzhouHotel.htm")
    public String showHangzhouHotel() {
        return "hangzhouHotel";
    }

    @RequestMapping(value = "/beijingHotel.htm")
    public String showBeijingHotel() {
        return "beijingHotel";
    }

    @RequestMapping(value = "/hongkongHotel.htm")
    public String showHongkongHotel() {
        return "hongkongHotel";
    }

    @RequestMapping(value = "/Dest.htm")
    public String showDest() {
        return "Dest";
    }

    @RequestMapping(value = "/food.htm")
    public String showFood() {
        return "food";
    }

    @RequestMapping(value = "/Travel.htm")
    public String showTravel() {
        return "Travel";
    }

    @RequestMapping(value = "/attraction.htm")
    public String showAttraction() {
        return "attraction";
    }

    @RequestMapping(value = "/qingdaoAtt.htm")
    public String showQingdaoAttraction() {
        return "qingdaoAtt";
    }

    @RequestMapping(value = "/beijingAtt.htm")
    public String showBeijingAttraction() {
        return "beijingAtt";
    }

    @RequestMapping(value = "/hangzhouAtt.htm")
    public String showHangzhouAttraction() {
        return "hangzhouAtt";
    }

    @RequestMapping(value = "/shanghaiAtt.htm")
    public String showShanghaiAttraction() {
        return "shanghaiAtt";
    }

    @RequestMapping(value = "/hongkongAtt.htm")
    public String showHongkongAttraction() {
        return "hongkongAtt";
    }

    @RequestMapping(value = "/welcomeGroups.htm")
    public String showWelcomeGroups() {
        return "welcomeGroups";
    }
    
       
    @RequestMapping(value = "/feedBack.htm")
    public String showFeedBack() {
        return "feedBack";
    }

}
