package com.dto;

public class Buycar {
	private int buycarid;
	private String userid;
	private String medicineid;
	private String medicinename;
	private String categorienum;
	private String subtotal;
	private String mprice;
	private String picture;
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getMprice() {
		return mprice;
	}
	public void setMprice(String mprice) {
		this.mprice = mprice;
	}
	public int getBuycarid() {
		return buycarid;
	}
	public void setBuycarid(int buycarid) {
		this.buycarid = buycarid;
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
	public String getCategorienum() {
		return categorienum;
	}
	public void setCategorienum(String categorienum) {
		this.categorienum = categorienum;
	}
	public String getSubtotal() {
		return subtotal;
	}
	public void setSubtotal(String subtotal) {
		this.subtotal = subtotal;
	}

}
