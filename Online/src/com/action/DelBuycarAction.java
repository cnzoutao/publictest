package com.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dao.BuycarDao;
import com.dto.Buycar;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class DelBuycarAction extends ActionSupport{

	private String userid;
	private int buycarid;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getBuycarid() {
		return buycarid;
	}
	public void setBuycarid(int buycarid) {
		this.buycarid = buycarid;
	}
	@Override
	public String execute() throws Exception {
		HttpServletRequest request=ServletActionContext.getRequest();
		BuycarDao buycarDao = new BuycarDao();
		List<Buycar> buycarinfos = new ArrayList<Buycar>();
		buycarDao.deleteBuycar(buycarid);
		buycarinfos=buycarDao.searchBuycarinfo(userid);
		Map session = ActionContext.getContext().getSession();
		session.put("totalmoney", String.valueOf( buycarDao.getTotalMoney(userid)));
		request.setAttribute("buycarinfos", buycarinfos);
		return SUCCESS;
	}
}
