package com.action;

import java.util.Map;

import com.dao.UserInfoDao;
import com.formbean.UserInfo;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserLoginAction extends ActionSupport{

	private UserInfo userinfo = new UserInfo();

	public UserInfo getUserinfo() {
		return userinfo;
	}

	public void setUserinfo(UserInfo userinfo) {
		this.userinfo = userinfo;
	}
	
	@Override
	public String execute() throws Exception {
		
		UserInfoDao userInfoDao = new UserInfoDao();
		Map session = ActionContext.getContext().getSession();
		if(userInfoDao.findUserByUserIdAndPassword(userinfo.getUserid(), userinfo.getUserpassword())){
			userinfo = userInfoDao.loadUser(userinfo.getUserid(),userinfo.getUserpassword());
			session.put("userinfo",userinfo);
			return SUCCESS;
		} else {
			session.put("errormessage","用户名或密码错误!");
			return ERROR;
		}
		
	}
}
