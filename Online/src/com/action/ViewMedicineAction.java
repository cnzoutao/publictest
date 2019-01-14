package com.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dao.MedicineinfoDao;
import com.dto.Medicineinfo;
import com.opensymphony.xwork2.ActionSupport;

public class ViewMedicineAction extends ActionSupport {

	private Medicineinfo medinfo;
	private String medicineid;
	
	public String getMedicineid() {
		return medicineid;
	}
	public void setMedicineid(String medicineid) {
		this.medicineid = medicineid;
	}
	public Medicineinfo getMedinfo() {
		return medinfo;
	}
	public void setMedinfo(Medicineinfo medinfo) {
		this.medinfo = medinfo;
	}

	@Override
	public String execute() throws Exception {
		HttpServletRequest request=ServletActionContext.getRequest();
		MedicineinfoDao medinfoDao = new MedicineinfoDao();
		Medicineinfo medicineinfo = medinfoDao.loadMedicine(medicineid);
		request.setAttribute("medicineinfo", medicineinfo);
		return SUCCESS;
	}
}
