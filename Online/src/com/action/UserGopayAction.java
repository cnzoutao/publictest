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

public class UserGopayAction extends ActionSupport {
	private String orderid;
	
	public String getOrderid() {
		return orderid;
	}

	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}

	@Override
	public String execute() throws Exception {
		OrderDao orderDao = new OrderDao();
		orderDao.modifyOrderStatusToPay(orderid);
		return SUCCESS;
	}
}
