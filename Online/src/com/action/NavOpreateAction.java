package com.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dao.MedicineinfoDao;
import com.dto.Medicineinfo;
import com.opensymphony.xwork2.ActionSupport;

public class NavOpreateAction extends ActionSupport{
	
	private String operate;
	private String keyword;

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getOperate() {
		return operate;
	}

	public void setOperate(String operate) {
		this.operate = operate;
	}
	
	@Override
	public String execute() throws Exception {
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("title",operate);
		List<Medicineinfo> medicineinfos = new ArrayList<Medicineinfo>();
		MedicineinfoDao medinfoDao = new MedicineinfoDao();
		if(operate.equals("search")){
			request.setAttribute("title", operate+"("+keyword+")");
			medicineinfos=medinfoDao.searchMedicine(keyword);
			request.setAttribute("operate",operate);
			request.setAttribute("medicineinfos", medicineinfos);
		} else {
			medicineinfos=medinfoDao.searchMedicineByClass(operate);
			request.setAttribute("medicineinfos", medicineinfos);
			request.setAttribute("operate",operate);
			
		}

		return SUCCESS;
	}

}
