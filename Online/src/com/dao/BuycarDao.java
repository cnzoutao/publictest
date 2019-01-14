package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dto.Buycar;
import com.util.DBUtil;

public class BuycarDao {

	public int insertBuycarinfo(Buycar buycarinfo){
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = DBUtil.getConnection();
			String sql="INSERT INTO buycar (userid,medicineid,medicinename,categorienum,subtotal,mprice,picture) VALUES (?,?,?,?,?,?,?)";
			ps = conn.prepareStatement(sql);
			ps.setString(1,buycarinfo.getUserid());
			ps.setString(2,buycarinfo.getMedicineid());
			ps.setString(3,buycarinfo.getMedicinename());
			ps.setString(4,buycarinfo.getCategorienum());
			ps.setString(5,buycarinfo.getSubtotal());
			ps.setString(6,buycarinfo.getMprice());
			ps.setString(7,buycarinfo.getPicture());
			return ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return 0;
	}
	public List<Buycar> searchBuycarinfo(String userid){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Buycar> buycars = new ArrayList<Buycar>();
		try {
			conn = DBUtil.getConnection();
			String sql="select * from buycar where userid=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1,userid);
			rs=ps.executeQuery();
			while(rs.next()){
				Buycar buycar = new Buycar();
				buycar.setBuycarid(rs.getInt("buycarid"));
				buycar.setCategorienum(rs.getString("categorienum"));
				buycar.setMedicineid(rs.getString("medicineid"));
				buycar.setMedicinename(rs.getString("medicinename"));
				buycar.setSubtotal(rs.getString("subtotal"));
				buycar.setUserid(userid);
				buycar.setMprice(rs.getString("mprice"));
				buycar.setPicture(rs.getString("picture"));
				buycars.add(buycar);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return buycars;
	}
	
	private static Buycar forutil(int buycarid){
		Buycar buycar = new Buycar();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = DBUtil.getConnection();
			String sql="select * from buycar where userid=?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1,buycarid);
			rs=ps.executeQuery();
			while(rs.next()){
				buycar.setBuycarid(rs.getInt("buycarid"));
				buycar.setCategorienum(rs.getString("categorienum"));
				buycar.setMedicineid(rs.getString("medicineid"));
				buycar.setMedicinename(rs.getString("medicinename"));
				buycar.setSubtotal(rs.getString("subtotal"));
				buycar.setUserid(rs.getString("userid"));
				buycar.setMprice(rs.getString("mprice"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return buycar;
	}
	
	public int setCategorienum(int buycarid,int num){
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = DBUtil.getConnection();
			String sql="UPDATE buycar SET categorienum =? ,subtotal =? WHERE buycarid=?";
			ps = conn.prepareStatement(sql);
			Buycar tempbuycar = BuycarDao.forutil(buycarid);
			double categorienum = Double.parseDouble(tempbuycar.getCategorienum());
			double subtotal = Double.parseDouble(tempbuycar.getSubtotal());
			double mpirce = Double.parseDouble(tempbuycar.getMprice());
			ps.setString(1, String.valueOf(categorienum+num));
			ps.setString(2, String.valueOf(subtotal+num*mpirce));
			ps.setInt(3, buycarid);
			return ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return 0;
	}
	
	public int deleteBuycar(int buycarid){
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = DBUtil.getConnection();
			String sql="delete from buycar where buycarid=?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1,buycarid);	
	        return ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return 0;
	}
	
	public int clearBuycar(){
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = DBUtil.getConnection();
			String sql="delete from buycar";
			ps = conn.prepareStatement(sql);
			return ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return 0;
	}
	
	public double getTotalMoney(String userid){
		BuycarDao dao = new BuycarDao();
		List<Buycar> buycars = dao.searchBuycarinfo(userid);
		double totalmoney =0;
		for(int i=0; i<buycars.size(); i++){
			totalmoney += Double.parseDouble(buycars.get(i).getSubtotal());
		}
		return totalmoney;
	}
}
