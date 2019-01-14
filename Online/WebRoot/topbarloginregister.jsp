<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="ass/css/amazeui.css">
<link rel="stylesheet" href="ass/css/dlstyle.css">
<style type="text/css">
i {
	padding-top: 13px
}
</style>
</head>

<body>
	<nav class="navbar navbar-default" role="navigation">
	<div style="width: 1190px ; height:50px; margin: auto;">
		<div class="navbar-header">
			<a class="navbar-brand" href="usermain.jsp">OnlinePharmacy</a>
		</div>
		<form action="" class="navbar-form navbar-left" role="search">
			<!-- nosearch -->
			<div class="form-group">
				<input type="text" class="form-control" />
			</div>
			<button type="submit" class="btn btn-default">
				<img alt="" src="img/search.png">
			</button>
		</form>
		<div style="float:right">
			<ul class="nav navbar-nav">
				<li><a href="usermain.jsp">首页</a></li>
			</ul>
		</div>
	</div>
	</nav>
</body>
</html>
