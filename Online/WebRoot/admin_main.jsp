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

<title>admin_main.jsp</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/bootstrap.css">

</head>

<body>
	<jsp:include page="admin_topbar.jsp"></jsp:include>
	<div style="width: 1190px;" class="container">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>用户ID</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>123</td>
					<td></td>
				</tr>
				<tr>
					<td>456</td>
					<td></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>
