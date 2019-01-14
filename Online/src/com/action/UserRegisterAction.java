package com.action;

import java.util.Map;

import com.dao.UserInfoDao;
import com.formbean.UserInfo;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserRegisterAction extends ActionSupport {

	private UserInfo userinfo = new UserInfo();
	private String userpassword;

	public String getUserpassword() {
		return userpassword;
	}

	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}

	public UserInfo getUserinfo() {
		return userinfo;
	}

	public void setUserinfo(UserInfo userinfo) {
		this.userinfo = userinfo;
	}
	
	@Override
	public String execute() throws Exception {
		
		userinfo.setSex("man");
		UserInfoDao userInfoDao = new UserInfoDao();
		Map session = ActionContext.getContext().getSession();
		if(userinfo.getUserid().equals("")){
			session.put("errormessage","用户名为空");
			return ERROR;
		} else if(userinfo.getUserpassword().equals("")){
			session.put("errormessage","密码不能为空!");
			return ERROR;
		} else if(!userinfo.getUserpassword().equals(userpassword)){
			session.put("errormessage","两次密码不一致!");
			return ERROR;
		} else if(userInfoDao.insertUserinfo(userinfo)>0){
			session.put("userinfo",userinfo);
			return SUCCESS;
		} else {
			session.put("errormessage","数据库错误!");
			return ERROR;
		}
		
	}
}
