package com.action;

import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dao.BuycarDao;
import com.dao.OrderDao;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.vo.Userorder;

public class UserpayAction extends ActionSupport {
	private static int orderidPlus(){
		Random rand = new Random(System.currentTimeMillis());
		int plus =rand.nextInt();
		if(plus>0){
			return plus;
		}else {
			return 0-plus;
		}
	}

	private String userid;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	@Override
	public String execute() throws Exception {
		HttpServletRequest request=ServletActionContext.getRequest();
		Map session = ActionContext.getContext().getSession();
		String totalmoney = (String) session.get("totalmoney");
		String orderid = userid+String.valueOf(UserpayAction.orderidPlus());
		OrderDao orderDao = new OrderDao();
		Userorder userorder = orderDao.newUserorder(userid, orderid, totalmoney);
		orderDao.insertOrder(userorder);
		BuycarDao buycarDao = new BuycarDao();
		buycarDao.clearBuycar();
		request.setAttribute("nopayorderid", orderid);
		return SUCCESS;
	}
}
