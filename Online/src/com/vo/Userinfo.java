package com.vo;

import java.util.HashSet;
import java.util.Set;


/**
 * Userinfo entity. @author MyEclipse Persistence Tools
 */

public class Userinfo  implements java.io.Serializable {


    // Fields    

     private String userid;
     private String userpassword;
     private String username;
     private String sex;
     private String commonmed;
     private String allergy;
     private String medhis;
     private String address;
     private Set userorders = new HashSet(0);


    // Constructors

    /** default constructor */
    public Userinfo() {
    }

	/** minimal constructor */
    public Userinfo(String userpassword) {
        this.userpassword = userpassword;
    }
    
    /** full constructor */
    public Userinfo(String userpassword, String username, String sex, String commonmed, String allergy, String medhis, String address, Set userorders) {
        this.userpassword = userpassword;
        this.username = username;
        this.sex = sex;
        this.commonmed = commonmed;
        this.allergy = allergy;
        this.medhis = medhis;
        this.address = address;
        this.userorders = userorders;
    }

   
    // Property accessors

    public String getUserid() {
        return this.userid;
    }
    
    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getUserpassword() {
        return this.userpassword;
    }
    
    public void setUserpassword(String userpassword) {
        this.userpassword = userpassword;
    }

    public String getUsername() {
        return this.username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }

    public String getSex() {
        return this.sex;
    }
    
    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getCommonmed() {
        return this.commonmed;
    }
    
    public void setCommonmed(String commonmed) {
        this.commonmed = commonmed;
    }

    public String getAllergy() {
        return this.allergy;
    }
    
    public void setAllergy(String allergy) {
        this.allergy = allergy;
    }

    public String getMedhis() {
        return this.medhis;
    }
    
    public void setMedhis(String medhis) {
        this.medhis = medhis;
    }

    public String getAddress() {
        return this.address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }

    public Set getUserorders() {
        return this.userorders;
    }
    
    public void setUserorders(Set userorders) {
        this.userorders = userorders;
    }
   








}