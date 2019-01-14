package com.action;

import java.util.HashMap;
import java.util.Map;

import com.dao.FavoritesinfoDao;
import com.dto.Favoritesinfo;
import com.opensymphony.xwork2.ActionSupport;

public class InsertFavoriteAction extends ActionSupport {

	private Map<String, Object> stauts;
	public Map<String, Object> getStauts() {
		return stauts;
	}
	public void setStauts(Map<String, Object> stauts) {
		this.stauts = stauts;
	}
	private String userid;
	private String medicineid;
	private String medicinename;
	private String mprice;
	private String picture;
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
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	@Override
	public String execute() throws Exception {
		stauts = new HashMap<String, Object>();
		if(userid.equals("") || userid == ""){
			stauts.put("issuccess", "nouser");
		} else {
			FavoritesinfoDao favDao = new FavoritesinfoDao();
			Favoritesinfo fav = new Favoritesinfo();
			fav.setUserid(userid);
			fav.setMedicineid(medicineid);
			fav.setMedicinename(medicinename);
			fav.setMprice(mprice);
			fav.setPicture(picture);
			if(favDao.insertFavoritesinfo(fav)>0) {
				
				stauts.put("issuccess", "success");
			} else {
				stauts.put("issuccess", "failed");
			}
			
		}
		return SUCCESS;
	}
}
