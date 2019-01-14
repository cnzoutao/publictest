package com.action;

import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.UserInfoDao;
import com.formbean.UserInfo;
import com.opensymphony.xwork2.ActionSupport;

public class ModifyUserpasswordAction extends ActionSupport {
	private String userid;
	private String password;
	private String newpassword;
	private Map<String, Object> stauts;
	public Map<String, Object> getStauts() {
		return stauts;
	}
	public void setStauts(Map<String, Object> stauts) {
		this.stauts = stauts;
	}
	public String getNewpassword() {
		return newpassword;
	}
	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	@Override
	public String execute() throws Exception {
		stauts = new HashMap<String, Object>();
		if(userid.equals("") || userid == ""){
			stauts.put("issuccess", "nouser");
		} else {
			UserInfoDao userinfoDao = new UserInfoDao();
			if(userinfoDao.findUserByUserIdAndPassword(userid, password)){
				UserInfo user = new UserInfo();
				user =userinfoDao.loadUser(userid, password);
				user.setUserpassword(newpassword);
				userinfoDao.modifyUserinfo(user);
				stauts.put("issuccess", "success");
			} else {
				stauts.put("issuccess", "failed");
			}
			
		}
		return SUCCESS;
	}
}
