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

<title>topbar.jsp</title>

<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/cnhn-mainmenu.css">

<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".input-lg.form-control").blur(function() {
			var $el = $(this);
			var inputname = 0;
			if ($el.val() == '') {
				$el.attr("placeholder", "药品名称不能为空");
			} else {
				$el.attr("placeholder", "请输入药品名称");
			}
		});
		var keyword = $(".input-lg.form-control");
		$('.btn.btn-default.input-lg').bind("click", function() {
			if (keyword.val() == "") {
				keyword.attr("placeholder", "药品名称不能为空");
				return false;
			}
		});
	});
</script>
<script type="text/javascript">
	
	$(document).ready(function(){
	
		$(".product-menu-title").on("click", function() {
			$(".product-menu").slideToggle(500);
		});
		
	});
	
</script>
<style type="text/css">
.checkout-page .product-menu {
  display: none;
}
</style>
</head>

<body>
	<div class="navbar navbar-default" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="usermain.jsp">OnlinePharmacy</a>
			</div>

			<div style="float:right">
				<ul class="nav navbar-nav">
					<s:if test="null==#session.userinfo||#session.userinfo.isEmpty()">
						<li><a href="login.jsp" style="color:red">登录</a></li>
						<li><a href="register.jsp">注册</a></li>
					</s:if>
					<s:else>
						<s:set name="userinfo" value="#session.userinfo"></s:set>
						<li><a href="modifyuserinfo">${userinfo.userid}</a></li>
						<li><a href="userexit">注销</a></li>
						<li class="dropdown"><a href=# class="dropdown-toggle"
							data-toggle="dropdown" onblur="">我的药网<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="modifyuserinfo">个人信息</a></li>
								<li><s:a
										href="userbuycar?userid=%{#session.userinfo.userid}">我的购物车</s:a></li>
								<li><s:a href="userlistorder?userid=%{#session.userinfo.userid}">我的订单</s:a></li>
								<li><s:a
										href="userfavorites?userid=%{#session.userinfo.userid}">我的收藏</s:a></li>
								<li class="divider"></li>
								<li><a href="userpassword.jsp">修改密码</a></li>
							</ul></li>
					</s:else>

				</ul>
			</div>
		</div>
	</div>
	
	<div>
		<div class="container">
			<div style="width: 200px;float: left; height:120px;">
				<div style="padding-top:13px">
					<img src="./img/logo.jpg">
				</div>
			</div>
			<div style="width: 770px;float: left;">
				<form class="form" role="form"
					action="navoperate?operate=<%="search"%>" method="post">
					<div class="form-group " style="padding-top: 28px">
						<div class="col-md-10">
							<s:if test="null==#request.keyword||#request.keyword.isEmpty()">
								<input type="text" class="form-control input-lg" name="keyword"
									placeholder="请输入药品名称">
							</s:if>
							<s:else>
								<input type="text" class="form-control input-lg" name="keyword"
									placeholder="请输入药品名称" value="${keyword}">
							</s:else>
						</div>
						<button type="submit" class="btn btn-default input-lg" name="">
							<img alt="" src="img/search.png">
						</button>

					</div>
					<div style="padding-left: 16px">
						<a href="javascript:void(0)">护肝片</a> <a href="javascript:void(0)">爱尔康</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div>
		<div ">
			<div class="bootstrap-iso-codelive">
				<div style="float: right">购物车</div>
			</div>
		</div>
	</div>
	
</body>
</html>
