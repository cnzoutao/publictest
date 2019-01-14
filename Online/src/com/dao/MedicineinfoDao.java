package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dto.Medicineinfo;
import com.util.DBUtil;

public class MedicineinfoDao {
	
	public List<Medicineinfo> searchMedicine(String keyword){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Medicineinfo> medicineinfos = new ArrayList<Medicineinfo>();
		try {
			conn = DBUtil.getConnection();
			String sql = "select * from medicineinfo where medicinename like ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, "%"+keyword+"%");
			rs = ps.executeQuery();
			while(rs.next()){
				Medicineinfo medinfo=new Medicineinfo();
				medinfo.setMedicinename(rs.getString("medicinename"));
				medinfo.setMedicineid(rs.getString("medicineid"));
				medinfo.setMprice(rs.getString("mprice"));
				medinfo.setPicture(rs.getString("picture"));
				
				medinfo.setComposition(rs.getString("composition"));
				medinfo.setEffect(rs.getString("effect"));
				medinfo.setUsage(rs.getString("usageofmed"));
				medinfo.setProductiondate(rs.getString("productiondate"));
				medinfo.setShelflife(rs.getString("shelflife"));
				medinfo.setStock(rs.getString("stock"));
				medinfo.setSupplierid(rs.getString("supplierid"));
				medinfo.setClassification(rs.getString("classification"));
				medicineinfos.add(medinfo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				ps.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return medicineinfos;
	}
	public List<Medicineinfo> searchMedicineByClass(String classification){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Medicineinfo> medicineinfos = new ArrayList<Medicineinfo>();
		try {
			conn = DBUtil.getConnection();
			String sql = "SELECT * FROM medicineinfo WHERE classification = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, classification);
			rs = ps.executeQuery();
			while(rs.next()){
				Medicineinfo medinfo=new Medicineinfo();
				medinfo.setMedicinename(rs.getString("medicinename"));
				medinfo.setMedicineid(rs.getString("medicineid"));
				medinfo.setMprice(rs.getString("mprice"));
				medinfo.setPicture(rs.getString("picture"));
				
				medinfo.setComposition(rs.getString("composition"));
				medinfo.setEffect(rs.getString("effect"));
				medinfo.setUsage(rs.getString("usageofmed"));
				medinfo.setProductiondate(rs.getString("productiondate"));
				medinfo.setShelflife(rs.getString("shelflife"));
				medinfo.setStock(rs.getString("stock"));
				medinfo.setSupplierid(rs.getString("supplierid"));
				medinfo.setClassification(rs.getString("classification"));
				medicineinfos.add(medinfo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				ps.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return medicineinfos;
	}
	
	public Medicineinfo loadMedicine(String medicineid){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		Medicineinfo medinfo = new Medicineinfo();
		try {
			conn = DBUtil.getConnection();
			String sql = "select * from medicineinfo where medicineid = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, medicineid);
			rs = ps.executeQuery();
			while(rs.next()){
				medinfo.setMedicinename(rs.getString("medicinename"));
				medinfo.setMedicineid(rs.getString("medicineid"));
				medinfo.setMprice(rs.getString("mprice"));
				medinfo.setComposition(rs.getString("composition"));
				medinfo.setEffect(rs.getString("effect"));
				medinfo.setUsage(rs.getString("usageofmed"));
				medinfo.setProductiondate(rs.getString("productiondate"));
				medinfo.setShelflife(rs.getString("shelflife"));
				medinfo.setStock(rs.getString("stock"));
				medinfo.setPicture(rs.getString("picture"));
				medinfo.setSupplierid(rs.getString("supplierid"));
				medinfo.setClassification(rs.getString("classification"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				ps.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return medinfo;
	}
	/*
	public static void main(String[] args) {
		MedicineinfoDao dao = new MedicineinfoDao();
		List<Medicineinfo> medicineinfos= dao.searchMedicineByClass("ÖÐÎ÷Ò©Æ·");
		System.out.println(medicineinfos.get(0).getClassification());
	}*/

}
