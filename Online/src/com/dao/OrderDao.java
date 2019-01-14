package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.dto.Buycar;
import com.util.DBUtil;
import com.util.HibernateSessionFactory;
import com.vo.Orderitem;
import com.vo.Userinfo;
import com.vo.Userorder;

public class OrderDao {
	//插入订单
	public void insertOrder(Userorder userorder){
		Session session = HibernateSessionFactory.getSession();
		Transaction trans = session.beginTransaction();
		session.save(userorder);
		trans.commit();
		session.close();
	}
	//新建一个用户对象
	public Userinfo newUserinfo(String userid){
		Userinfo userinfo =new Userinfo();
		userinfo.setUserid(userid);
		userinfo.setUserpassword("");
		return userinfo;
	}
	//新建一个商品对象
	public Set returnitems(String userid){
		Set items = new HashSet();
		BuycarDao buycarDao = new BuycarDao();
		List<Buycar> buycarinfos = new ArrayList<Buycar>();
		buycarinfos=buycarDao.searchBuycarinfo(userid);
		for(int i=0;i<buycarinfos.size();i++){
			Orderitem item = new Orderitem();
			item.setMedicineid(buycarinfos.get(i).getMedicineid());
			item.setMedicinename(buycarinfos.get(i).getMedicinename());
			item.setNum(buycarinfos.get(i).getCategorienum());
			item.setPrice(buycarinfos.get(i).getMprice());
			item.setSubtotal(buycarinfos.get(i).getSubtotal());
			items.add(item);
		}
		return items;
	}
	//新建一个订单对象
	public Userorder newUserorder(String userid,String orderid,String totalmoney){
		OrderDao orderDao = new OrderDao();
		String address =orderDao.forutil(userid);
		Set items  = orderDao.returnitems(userid);
		Userinfo userinfo = orderDao.newUserinfo(userid);
		Date time = new Date();
		Userorder userorder = new Userorder();
		userorder.setUserinfo(userinfo);
		userorder.setAddress(address);
		userorder.setOrderid(orderid);
		userorder.setOrdertime(time.toLocaleString());
		userorder.setOrderitems(items);
		userorder.setStatus("未支付");
		userorder.setTotalmoney(totalmoney);
		return userorder;
	}
	//小工具
	private String forutil(String userid){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = DBUtil.getConnection();
			String sql="select * from userinfo where userid=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1,userid);
			rs = ps.executeQuery();
			while(rs.next()){
				return rs.getString("address");
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
		return null;
	}
	//根据用户id返回订单信息
	public List<Userorder> searchUserorders(String userid){
		Session session = HibernateSessionFactory.getSession();
		Query query = session.createQuery("from Userorder where userid=?");
		query.setParameter(0, userid);
		List<Userorder> orders = query.list();
		return orders;
	}
	//根据订单号查看返回订单信息
	public Userorder loadUserorder(String orderid){
		Session session = HibernateSessionFactory.getSession();
		Query query = session.createQuery("from Userorder where orderid=?");
		query.setParameter(0, orderid);
		query.setMaxResults(1);
		
		
		Userorder orders = ( Userorder)query.uniqueResult();
		
		
		return orders;
	}

	//支付订单
	public void modifyOrderStatusToPay(String orderid){
		OrderDao orderDao = new OrderDao();
		Userorder order = orderDao.loadUserorder(orderid);
		order.setStatus("等待发货");
		Session session = HibernateSessionFactory.getSession();
		Transaction trans = session.beginTransaction();
		session.update(order);
		trans.commit();
		session.close();
	}
}
