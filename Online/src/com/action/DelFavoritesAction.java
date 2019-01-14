package com.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dao.FavoritesinfoDao;
import com.dto.Favoritesinfo;
import com.opensymphony.xwork2.ActionSupport;

public class DelFavoritesAction extends ActionSupport{

	private String userid;
	private int favoriteid;
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
	@Override
	public String execute() throws Exception {
		
		HttpServletRequest request=ServletActionContext.getRequest();
		List<Favoritesinfo> favs =new ArrayList<Favoritesinfo>();
		FavoritesinfoDao favDao = new FavoritesinfoDao();
		favDao.deleteFavoritesinfo(favoriteid);
		favs = favDao.serarchFavorites(userid);
		request.setAttribute("favoritesinfos", favs);
		return SUCCESS;
	}
}
