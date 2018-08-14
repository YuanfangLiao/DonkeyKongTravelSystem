/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.donkey.model;

/**
 *
 * @author liao
 */
public class FeedBack implements java.io.Serializable{
    
    private int feed_id;
    private String title;
    private String feed_info;   

    public FeedBack() {
    }

    public FeedBack(int feed_id, String title, String feed_info) {
        this.feed_id = feed_id;
        this.title = title;
        this.feed_info = feed_info;
    }

    

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getFeed_info() {
        return feed_info;
    }

    public void setFeed_info(String feed_info) {
        this.feed_info = feed_info;
    }

    public int getFeed_id() {
        return feed_id;
    }

    public void setFeed_id(int feed_id) {
        this.feed_id = feed_id;
    }
    
}
