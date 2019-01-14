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

<title>register.jsp</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="css/bootstrap.css">

</head>

<body>
	<jsp:include page="topbarloginregister.jsp"></jsp:include>
	<div style="width: 1190px ; height:50px; margin: auto;">
		<div class="col-md-8">
			<div class="">
				<span></span><img src="" alt="图片">
			</div>
		</div>
		<div class="col-md-4">
			<div class="login-box">
				<div>
					<h3 class="title" style="margin: auto;">注册</h3>
					<a href="__login.jsp" class="zcnext am-fr am-btn-default">已注册!请登录</a>
				</div>
				<div style="float: right;"></div>
				<div class="login-form">
					<s:form theme="simple" action="userregister" method="post">
						<div class="user-name">
							<label for="user"><i class="am-icon-user"></i></label>
							<s:textfield name="userinfo.userid" placeholder="请输入ID"></s:textfield>

						</div>
						<div class="user-pass">
							<label for="password"><i class="am-icon-lock"></i></label>
							<s:password name="userinfo.userpassword" placeholder="请输入密码"></s:password>
						</div>
						<div class="user-pass">
							<label for="password"><i class="am-icon-lock"></i></label>
							<s:password name="userpassword" placeholder="确认入密码"></s:password>
						</div>
						<div>
							<s:submit value="注册" cssClass="btn btn-primary"></s:submit>
						</div>
					</s:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
