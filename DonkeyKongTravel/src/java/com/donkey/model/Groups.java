/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.donkey.model;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author liao
 */
public class Groups implements Serializable {
    private int group_travel_id;
    private String title;
    private String user_id;
    private int att_id;
    private int hotel_id;
    private Date begin_date;
    private Date end_date;
    private int fee;
    private int num_people;
    private String trip_mode;
    private String isValid;

    public Groups() {
    }

    public Groups(int group_travel_id, String title, String user_id, int att_id, int hotel_id, Date begin_date, Date end_date, int fee, int num_people, String trip_mode, String isValid) {
        this.group_travel_id = group_travel_id;
        this.title = title;
        this.user_id = user_id;
        this.att_id = att_id;
        this.hotel_id = hotel_id;
        this.begin_date = begin_date;
        this.end_date = end_date;
        this.fee = fee;
        this.num_people = num_people;
        this.trip_mode = trip_mode;
        this.isValid = isValid;
    }

 

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getAtt_id() {
        return att_id;
    }

    public void setAtt_id(int att_id) {
        this.att_id = att_id;
    }

    public int getHotel_id() {
        return hotel_id;
    }

    public void setHotel_id(int hotel_id) {
        this.hotel_id = hotel_id;
    }

    public Date getBegin_date() {
        return begin_date;
    }

    public void setBegin_date(Date begin_date) {
        this.begin_date = begin_date;
    }

    public Date getEnd_date() {
        return end_date;
    }

    public void setEnd_date(Date end_date) {
        this.end_date = end_date;
    }

    public int getFee() {
        return fee;
    }

    public void setFee(int fee) {
        this.fee = fee;
    }

    public int getNum_people() {
        return num_people;
    }

    public void setNum_people(int num_people) {
        this.num_people = num_people;
    }

    public String getTrip_mode() {
        return trip_mode;
    }

    public void setTrip_mode(String trip_mode) {
        this.trip_mode = trip_mode;
    }

    public String getIsValid() {
        return isValid;
    }

    public void setIsValid(String isValid) {
        this.isValid = isValid;
    }


    public int getGroup_travel_id() {
        return group_travel_id;
    }

    public void setGroup_travel_id(int group_travel_id) {
        this.group_travel_id = group_travel_id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }
    
}
