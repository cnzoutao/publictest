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

<title>usermain.jsp</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>

<body>
	<jsp:include page="topbar.jsp"></jsp:include>
	<jsp:include page="usermainmenu.jsp"></jsp:include>
	<div class="">
		<div class="container">
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-lg-8 col-md-8 col-sm-12">
				<div id="myCarousel" class="carousel slide" data-ride="carousel"
				data-interval="5000">
				<!-- 轮播指标 -->
				
				<ul class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ul>
				<!-- 轮播项目 -->
				<div class="carousel-inner">
					<div class="item active"><a href="http://www.baidu.com">
						<img src="img/firstslide.jpg" alt="First slide"></a>
					</div>
					<div class="item">
						<img src="img/secondslide.jpg" alt="Second slide">
					</div>
					<div class="item">
						<img src="img/thirdslide.jpg" alt="Third slide">
					</div>
				</div>
				<!-- 轮播导航 -->
				<!-- <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a> -->
				<!-- <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a> -->
			</div>
			</div>
			</div>
		</div>
	</div>
	<div style="padding-top: 25px;">
		<div class="container">
			<!-- 
		<div style="float: left;">
			<div class=""><img alt="" src="img/-1f.jpg"> </div>
			<div class="col-md-3">
				<a href="viewmedicine?medicineid=**"><img alt="" src="img/-101.jpg"></a>
			</div>
			<div class="col-md-3">
				<a href="viewmedicine?medicineid=**"><img alt="" src="img/-102.jpg"></a>
			</div>
			<div class="col-md-3">
				<a href="viewmedicine?medicineid=**"><img alt="" src="img/-103.jpg"></a>
			</div>
		</div> -->
			<img alt="" src="img/0f.jpg"> <img alt="" src="img/1f.jpg">
		</div>
	</div>

</body>
</html>
