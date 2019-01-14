package com.action;

import java.util.Map;

import com.dao.UserInfoDao;
import com.formbean.UserInfo;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ModifyUserinfoAction extends ActionSupport{
	
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
		try {
			if(userinfo.getUserid().equals(null)){
				userinfo = (UserInfo) session.get("userinfo");
				return SUCCESS;
			} else if(userInfoDao.modifyUserinfo(userinfo)>0){
				session.put("userinfo",userinfo);
				return SUCCESS;
			}else{
				session.put("errormessage","Êý¾Ý¿â´íÎó");
				return ERROR;
			}
		} catch (Exception e) {
			userinfo = (UserInfo) session.get("userinfo");
			return SUCCESS;
		}
		
		
	}
}
