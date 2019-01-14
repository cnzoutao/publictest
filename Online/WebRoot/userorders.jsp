<%@page import="com.vo.Orderitem"%>
<%@page import="com.vo.Userorder"%>
<%@page import="com.dao.OrderDao"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>我的订单</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="ass/css/amazeui.css" rel="stylesheet" type="text/css" />
<link href="ass/css/cartstyle.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>

<body>
	<jsp:include page="topbar.jsp"></jsp:include>
	<jsp:include page="usermainmenuother.jsp"></jsp:include>
	<div>
		<div class="container">
			<jsp:include page="usermanage.jsp"></jsp:include>

			<div class="col-md-10">
				<s:if test="null==#session.userinfo||#session.userinfo.isEmpty()">
					<p>please login first</p>
				</s:if>
				<s:else>
					<%
						OrderDao orderDao = new OrderDao();
							String userid = (String) request.getAttribute("userid");
							List<Userorder> orders = orderDao.searchUserorders(userid);
					%>
					<div>
						<h3>我的订单</h3>
					</div>
					<table class="table table-striped ">
						<tr class="order-status5">
							<th class="col-md-4"><span>商品</span></th>
							<th class="col-md-1"><span>单价</span></th>
							<th class="col-md-1"><span>数量</span></th>
							<th class="col-md-1"><span>商品操作</span></th>
							<th class="col-md-1"><span>合计</span></th>
							<th class="col-md-1"><span>交易状态</span></th>
							<th class="col-md-1"><span>交易操作</span></th>
						</tr>

						<%
							for (int i = 0; i < orders.size(); i++) {
									Userorder eachorder = orders.get(i);
						%>

						<!--交易成功-->
						<tr><td colspan="7">--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</td></tr>
						<tr class="order-status5">
							<td class="order-title">
								<div class="dd-num">
									订单编号：<a href="javascript:;"><%=eachorder.getOrderid()%> </a>
								</div> <span>成交时间：<%=eachorder.getOrdertime()%></span>
							</td>
						</tr>
						<%
							Set items = eachorder.getOrderitems();
									for (Object item : items) {
										Orderitem eachitem = (Orderitem) item;
						%>
						<tr>
							<td><p><%=eachitem.getMedicinename()%></p></td>
							<td><%=eachitem.getPrice()%></td>
							<td><span>×</span><%=eachitem.getNum()%></td>
							<%
								}
							%>
							<td colspan="2"><p>
									合计：<%=eachorder.getTotalmoney()%></td>
							<td><div class="item-status">
							<% if(eachorder.getStatus().equals("未支付")){%>
							
							<a href="userrepaybuycar?orderid=<%=eachorder.getOrderid()%>">去支付</a>
							<% }else{
							%>
							<p class="Mystatus"><%=eachorder.getStatus()%></p><%}
							%>
									
								</div></td>
							<td><div class="am-btn am-btn-danger anniu">删除订单</div></td>

						</tr>
						<%
							}
						%>

					</table>
				</s:else>
			</div>
		</div>
	</div>
</body>
</html>
