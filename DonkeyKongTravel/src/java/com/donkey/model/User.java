/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.donkey.model;

import java.util.Date;

/**
 *
 * @author n551
 */
public class User  implements java.io.Serializable{
    private String id;
    private String password;
    private String name;
    private String title;
    private String isValid;
    private Date create_date;
    private int level;
   
    public User(){}

    public User(String id, String password, String name, String title, String isValid, Date create_date, int level) {
        this.id = id;
        this.password = password;
        this.name = name;
        this.title = title;
        this.isValid = isValid;
        this.create_date = create_date;
        this.level = level;
    }
    
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getIsValid() {
        return isValid;
    }

    public void setIsValid(String isValid) {
        this.isValid = isValid;
    }

    public Date getCreate_date() {
        return create_date;
    }

    public void setCreate_date(Date create_date) {
        this.create_date = create_date;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    
}
