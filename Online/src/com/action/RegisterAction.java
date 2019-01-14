package com.action;

import java.util.Map;

import com.formbean.Register;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport{

	Register registerInfo = new Register();

	public Register getRegisterInfo() {
		return registerInfo;
	}

	public void setRegisterInfo(Register registerInfo) {
		this.registerInfo = registerInfo;
	}
	
	@Override
	public String execute() throws Exception {
		Map session = ActionContext.getContext().getSession();
		session.put("registerInfo",registerInfo);
		return SUCCESS;
	}
}
