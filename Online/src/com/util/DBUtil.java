package com.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {
	
	public static Connection getConnection(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://47.107.244.188:3306/onlinepharmacy?useSSL=false&characterEncoding=utf-8", "root", "ZouTao-1998.");
			//Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinepharmacy", "root", "123456");
			return conn;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
