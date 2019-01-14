package com.formbean;

public class UserInfo {

	private String userid;   //客户编号
	private String userpassword; //密码
	private String username; //姓名
	private String sex;		 //性别
	private String commonmed;//常用药
	private String allergy;	 //过敏史
	private String medhis;	 //病史
	private String address;	 //收货地址
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpassword() {
		return userpassword;
	}
	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getCommonmed() {
		return commonmed;
	}
	public void setCommonmed(String commonmed) {
		this.commonmed = commonmed;
	}
	public String getAllergy() {
		return allergy;
	}
	public void setAllergy(String allergy) {
		this.allergy = allergy;
	}
	public String getMedhis() {
		return medhis;
	}
	public void setMedhis(String medhis) {
		this.medhis = medhis;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
}
