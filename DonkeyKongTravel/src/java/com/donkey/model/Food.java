/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.donkey.model;

/**
 *
 * @author n551
 */
public class Food  implements java.io.Serializable{
    private int food_id;
    private String name;
    private String type;
    private int num_praise;
    private int num_like;

    public Food() {
    }



    public int getFood_id() {
        return food_id;
    }

    public void setFood_id(int food_id) {
        this.food_id = food_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Food(int food_id, String name, String type, int num_praise, int num_like) {
        this.food_id = food_id;
        this.name = name;
        this.type = type;
        this.num_praise = num_praise;
        this.num_like = num_like;
    }

 

    public int getNum_like() {
        return num_like;
    }

    public void setNum_like(int num_like) {
        this.num_like = num_like;
    }

    public int getNum_praise() {
        return num_praise;
    }

    public void setNum_praise(int num_praise) {
        this.num_praise = num_praise;
    }
    
}
