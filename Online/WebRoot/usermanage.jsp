<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>

<body>
	<div class="row col-md-2">
		<ul class="nav nav-stacked">
			<li><a style="color:black;">订单信息管理</a></li>
			<li><s:a href="userbuycar?userid=%{#session.userinfo.userid}">我的购物车</s:a></li>
			<li><s:a href="userlistorder?userid=%{#session.userinfo.userid}">我的订单</s:a></li>
			<li><s:a href="userfavorites?userid=%{#session.userinfo.userid}">我的收藏</s:a></li>
		</ul>
		<ul class="nav nav-stacked">
			<li><a style="color:black;">个人信息管理</a></li>
			<li><a href="modifyuserinfo">编辑个人信息</a></li>
			<li><a href="userpassword.jsp">修改密码</a></li>
		</ul>
	</div>
</body>
</html>
