package com.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserExitAction extends ActionSupport {
	
	@Override
	public String execute() throws Exception {
		Map session = ActionContext.getContext().getSession();
		session.clear();
		return SUCCESS;
	}

}
