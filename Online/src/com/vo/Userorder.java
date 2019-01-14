package com.vo;

import java.util.HashSet;
import java.util.Set;


/**
 * Userorder entity. @author MyEclipse Persistence Tools
 */

public class Userorder  implements java.io.Serializable {


    // Fields    

     private String orderid;
     private Userinfo userinfo;
     private String ordertime;
     private String status;
     private String address;
     private String totalmoney;
     private Set orderitems = new HashSet(0);


    // Constructors

    /** default constructor */
    public Userorder() {
    }

	/** minimal constructor */
    public Userorder(Userinfo userinfo) {
        this.userinfo = userinfo;
    }
    
    /** full constructor */
    public Userorder(Userinfo userinfo, String ordertime, String status, String address, String totalmoney, Set orderitems) {
        this.userinfo = userinfo;
        this.ordertime = ordertime;
        this.status = status;
        this.address = address;
        this.totalmoney = totalmoney;
        this.orderitems = orderitems;
    }

   
    // Property accessors

    public String getOrderid() {
        return this.orderid;
    }
    
    public void setOrderid(String orderid) {
        this.orderid = orderid;
    }

    public Userinfo getUserinfo() {
        return this.userinfo;
    }
    
    public void setUserinfo(Userinfo userinfo) {
        this.userinfo = userinfo;
    }

    public String getOrdertime() {
        return this.ordertime;
    }
    
    public void setOrdertime(String ordertime) {
        this.ordertime = ordertime;
    }

    public String getStatus() {
        return this.status;
    }
    
    public void setStatus(String status) {
        this.status = status;
    }

    public String getAddress() {
        return this.address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }

    public String getTotalmoney() {
        return this.totalmoney;
    }
    
    public void setTotalmoney(String totalmoney) {
        this.totalmoney = totalmoney;
    }

    public Set getOrderitems() {
        return this.orderitems;
    }
    
    public void setOrderitems(Set orderitems) {
        this.orderitems = orderitems;
    }
   








}