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

<title>userinfo.jsp</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#modifypassword").click(function() {
			$.ajax({
				type : "post",
				url : "modifypassword?userid=" + "${session.userinfo.userid}"
					+ "&password=" + $("#password").val()
					+ "&newpassword=" + $("#newpassword").val(),
				date : {
					password : $("#password").val(),
					newpassword : $("#newpassword").val()
				},
				dateType : "json",
				success : function(data) {
					if (data.issuccess == "nouser") {
						alert("请先登录");
					} else if (data.issuccess == "success") {
						alert("修改成功");
					} else {
						alert("原密码错误,修改失败");
					}
				}
			});

		});
	});
</script>
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
					<s:set name="userinfo" value="#session.userinfo"></s:set>
					<div class="col-md-8">

						<div class="form-group">
							<label>原密码:</label> <input id="password" class="form-control"
								type="password">
						</div>
						<div class="form-group">
							<label>新密码:</label> <input id="newpassword" class="form-control"
								type="password">
						</div>
						<button id="modifypassword" class="btn btn-primary">修改密码</button>
					</div>
				</s:else>
			</div>
		</div>
	</div>
</body>
</html>
