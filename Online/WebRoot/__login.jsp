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

<title>login.jsp</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="js/jquery.js"></script>
<style>
.errormessage {
	font-size: 14px;
	color: red;
	display: none;
}
</style>

<script type="text/javascript">
	$(document).ready(function() {
		$("#userlogin_userinfo_userid").blur(function() {
			var $el = $(this);
			var inputname=0;
			if($el.val() == '') {
				$("#username-error").css("display", "inline");
			}else {
				$("#username-error").css("display", "none");
			}
		});
		$("#userlogin_userinfo_userpassword").blur(function() {
			var $el = $(this);
			var inputname=0;
			if($el.val() == '') {
				$("#password-error").css("display", "inline");
			}else {
				$("#password-error").css("display", "none");
			}
		});
		var username= $("#userlogin_userinfo_userid");
		var password= $("#userlogin_userinfo_userpassword");
		$('#userlogin_0').bind("click", function() {
			if (username.val() == "") {
				$("#username-error").css("display", "inline");
				return false;
			}
			if (password.val() == "") {
				$("#password-error").css("display", "inline");
				return false;
			}
			$("#username-error").css("display", "none");
			$("#password-error").css("display", "none");
		});
	});
</script>

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
					<h3 class="title" style="margin: auto;">登录药网</h3>
					<a href="register.jsp" class="zcnext am-fr am-btn-default">注册</a>
				</div>
				<div style="float: right;"></div>
				<div class="login-form">
					<s:form theme="simple" action="userlogin" method="post" role="form">
						<div class="user-name">
							<label for="user"><i class="am-icon-user"></i></label>
							<s:textfield name="userinfo.userid" placeholder="请输入ID"></s:textfield>
						</div>
						<span class="errormessage" id="username-error">用户ID不能为空</span>
						<div class="user-pass">
							<label for="password"><i class="am-icon-lock"></i></label>
							<s:password name="userinfo.userpassword" placeholder="请输入密码"></s:password>
						</div>
						<span class="errormessage" id="password-error">密码不能为空</span>
						<div>
							<s:submit value="登录" cssClass="btn btn-primary"></s:submit>
						</div>
					</s:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
