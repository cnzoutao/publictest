package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.formbean.UserInfo;
import com.util.DBUtil;

public class UserInfoDao {
	
	public int insertUserinfo(UserInfo userinfo){
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = DBUtil.getConnection();
			String sql="INSERT INTO userinfo VALUE (?,?,?,?,?,?,?,?)";
			ps = conn.prepareStatement(sql);
			ps.setString(1,userinfo.getUserid());
			ps.setString(2,userinfo.getUserpassword());
			ps.setString(3,userinfo.getUsername());
			ps.setString(4,userinfo.getSex());
			ps.setString(5,userinfo.getCommonmed());
			ps.setString(6,userinfo.getAllergy());
			ps.setString(7,userinfo.getMedhis() );
			ps.setString(8,userinfo.getAddress());
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

	public boolean findUserByUserIdAndPassword(String userid, String password){
		
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = DBUtil.getConnection();
			String sql="select * from userinfo where userid =? and userpassword =?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, userid);
			ps.setString(2, password);
			rs= ps.executeQuery();
			if(rs.next()){
				return true;
			} else {
				return false;
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
		return false;
	}
	
	public UserInfo loadUser(String userid, String password){
		
		UserInfo userinfo = new UserInfo();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = DBUtil.getConnection();
			String sql="select * from userinfo where userid =? and userpassword =?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, userid);
			ps.setString(2, password);
			rs= ps.executeQuery();
			if(rs.next()){
				userinfo.setUserid(rs.getString("userid"));
				userinfo.setUsername(rs.getString("username"));
				userinfo.setUserpassword(rs.getString("userpassword"));
				userinfo.setSex(rs.getString("sex"));
				userinfo.setCommonmed(rs.getString("commonmed"));
				userinfo.setMedhis(rs.getString("medhis"));
				userinfo.setAllergy(rs.getString("allergy"));
				userinfo.setAddress(rs.getString("address"));
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
		return userinfo;
	}
	
	public int modifyUserinfo(UserInfo userinfo){
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = DBUtil.getConnection();
			String sql="UPDATE userinfo SET username=?, sex=?, commonmed=?, allergy=?, medhis=?,address=?,userpassword=? WHERE userid=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1,userinfo.getUsername());
			ps.setString(2,userinfo.getSex());
			ps.setString(3,userinfo.getCommonmed());
			ps.setString(4,userinfo.getAllergy());
			ps.setString(5,userinfo.getMedhis());
			ps.setString(6,userinfo.getAddress());
			ps.setString(7,userinfo.getUserpassword());
			ps.setString(8,userinfo.getUserid() );
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

}
