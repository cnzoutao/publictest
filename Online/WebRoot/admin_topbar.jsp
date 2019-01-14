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

<title>admin_topbar.jsp</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/bootstrap.css">

</head>

<body>
	<div style="width: 1190px;" class="container navbar navbar-default" role="navigation">
		<div class="navbar-header">
			<a class="navbar-brand" href="usermain.jsp">OnlinePharmacy_Administrators</a>
		</div>
		<div style="float:right">
			<%-- <ul class="nav navbar-nav">
				<s:if test="null==#session.userinfo||#session.userinfo.isEmpty()">
					<jsp:forward page="usermain.jsp"></jsp:forward>
				</s:if>
				<s:else>
					<s:set name="userinfo" value="#session.userinfo"></s:set>
					<li>管理员:</li>
					<li>${userinfo.userid}</li>
					<li><a href="adminexit">注销</a></li>
				</s:else>

			</ul> --%>
		</div>
	</div>
	<div style="width: 1190px;" class="container">
		<ul class="pagination nav-tabs">
			<li><a href=#>用户管理</a></li>
			<li><a href=#>管理</a></li>
			<li><a href=#>管理</a></li>
			<li><a href=#>待定</a></li>
			<li><a href=#>待定</a></li>
			<li><a href=#>待定</a></li>
		</ul>
	</div>
</body>
</html>
