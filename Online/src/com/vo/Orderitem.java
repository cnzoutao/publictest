package com.vo;

/**
 * Orderitem entity. @author MyEclipse Persistence Tools
 */

public class Orderitem implements java.io.Serializable {

	// Fields

	private Integer orderitemid;
	private Userorder userorder;
	private String medicineid;
	private String medicinename;
	private String price;
	private String num;
	private String subtotal;

	// Constructors

	/** default constructor */
	public Orderitem() {
	}

	/** full constructor */
	public Orderitem(Userorder userorder, String medicineid, String medicinename, String price, String num,
			String subtotal) {
		this.userorder = userorder;
		this.medicineid = medicineid;
		this.medicinename = medicinename;
		this.price = price;
		this.num = num;
		this.subtotal = subtotal;
	}

	// Property accessors

	public Integer getOrderitemid() {
		return this.orderitemid;
	}

	public void setOrderitemid(Integer orderitemid) {
		this.orderitemid = orderitemid;
	}

	public Userorder getUserorder() {
		return this.userorder;
	}

	public void setUserorder(Userorder userorder) {
		this.userorder = userorder;
	}

	public String getMedicineid() {
		return this.medicineid;
	}

	public void setMedicineid(String medicineid) {
		this.medicineid = medicineid;
	}

	public String getMedicinename() {
		return this.medicinename;
	}

	public void setMedicinename(String medicinename) {
		this.medicinename = medicinename;
	}

	public String getPrice() {
		return this.price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getNum() {
		return this.num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getSubtotal() {
		return this.subtotal;
	}

	public void setSubtotal(String subtotal) {
		this.subtotal = subtotal;
	}

}