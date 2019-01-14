package com.dto;

public class Favoritesinfo {
	private int favoriteid;
	private String userid;
	private String medicineid;
	private String medicinename;
	private String mprice;
	private String picture;
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public int getFavoriteid() {
		return favoriteid;
	}
	public void setFavoriteid(int favoriteid) {
		this.favoriteid = favoriteid;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getMedicineid() {
		return medicineid;
	}
	public void setMedicineid(String medicineid) {
		this.medicineid = medicineid;
	}
	public String getMedicinename() {
		return medicinename;
	}
	public void setMedicinename(String medicinename) {
		this.medicinename = medicinename;
	}
	public String getMprice() {
		return mprice;
	}
	public void setMprice(String mprice) {
		this.mprice = mprice;
	}


}
