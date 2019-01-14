package com.action;

import java.util.HashMap;
import java.util.Map;

import com.dao.BuycarDao;
import com.dao.MedicineinfoDao;
import com.dto.Buycar;
import com.dto.Medicineinfo;
import com.opensymphony.xwork2.ActionSupport;

public class InsertBuycarAction extends ActionSupport {
	
	private Map<String, Object> stauts;
	private String userid;
	private String medicineid;
	private String categorienum;
	private String medicinename;
	private String mprice;
	private String picture;
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
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
	public String getCategorienum() {
		return categorienum;
	}
	public void setCategorienum(String categorienum) {
		this.categorienum = categorienum;
	}
	public Map<String, Object> getStauts() {
		return stauts;
	}
	public void setStauts(Map<String, Object> stauts) {
		this.stauts = stauts;
	}
	@Override
	public String execute() throws Exception {
		stauts = new HashMap<String, Object>();
		if(userid.equals("") || userid == ""){
			stauts.put("issuccess", "nouser");
		} else {
			BuycarDao buycarDao = new BuycarDao();
			double subtotal = Double.parseDouble(this.categorienum)*Double.parseDouble(this.mprice);
			Buycar buycarinfo = new Buycar();
			buycarinfo.setCategorienum(this.categorienum);
			buycarinfo.setUserid(this.userid);
			buycarinfo.setMedicinename(medicinename);
			buycarinfo.setSubtotal(String.valueOf(subtotal));
			buycarinfo.setMedicineid(this.medicineid);
			buycarinfo.setMprice(mprice);
			buycarinfo.setPicture(picture);
			if(buycarDao.insertBuycarinfo(buycarinfo)>0) {
				
				stauts.put("issuccess", "success");
			} else {
				stauts.put("issuccess", "failed");
			}
			
		}
		return SUCCESS;
	}
}
