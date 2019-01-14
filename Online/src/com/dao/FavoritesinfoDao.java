package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dto.Favoritesinfo;
import com.util.DBUtil;

public class FavoritesinfoDao {
	
	public int insertFavoritesinfo(Favoritesinfo favoritesinfo){
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = DBUtil.getConnection();
			String sql="INSERT INTO favorites (userid,medicineid,medicinename,mprice,picture) VALUES (?,?,?,?,?)";
			ps = conn.prepareStatement(sql);
			ps.setString(1,favoritesinfo.getUserid());
			ps.setString(2,favoritesinfo.getMedicineid());
			ps.setString(3,favoritesinfo.getMedicinename());
			ps.setString(4,favoritesinfo.getMprice());
			ps.setString(5, favoritesinfo.getPicture());
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
	
	public int deleteFavoritesinfo(int favoriteid){
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = DBUtil.getConnection();
			String sql="delete from favorites where favoriteid=?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1,favoriteid);	
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
		
	
	public List<Favoritesinfo> serarchFavorites(String userid){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Favoritesinfo> favoritesinfos = new ArrayList<Favoritesinfo>();
		try {
			conn = DBUtil.getConnection();
			String sql = "select * from favorites where userid=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs = ps.executeQuery();
			while(rs.next()){
				Favoritesinfo favorinfo = new Favoritesinfo();
				favorinfo.setFavoriteid(rs.getInt("favoriteid"));
				favorinfo.setUserid(rs.getString("userid"));
				favorinfo.setMprice(rs.getString("mprice"));
				favorinfo.setMedicineid(rs.getString("medicineid"));
				favorinfo.setMedicinename(rs.getString("medicinename"));
				favorinfo.setPicture(rs.getString("picture"));
				favoritesinfos.add(favorinfo);
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
		return favoritesinfos;
	}

	
}
