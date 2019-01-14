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

<title>商品:${request.medicineinfo.medicinename}</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script src="js/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#insertbuycar").click(function() {
			$.ajax({
				type : "post",
				url : "insertbuycar?userid=" + "${session.userinfo.userid}"
					+ "&medicineid=" + "${medicineinfo.medicineid}"
					+ "&categorienum=" + $("#categorienum").val()
					+ "&mprice=${medicineinfo.mprice}"
					+ "&medicinename=${medicineinfo.medicinename}"
					+ "&picture=${medicineinfo.picture}",
				dateType : "json",
				success : function(data) {
					if (data.issuccess == "nouser") {
						alert("请先登录");
					} else if (data.issuccess == "success") {
						alert("添加成功");
					} else {
						alert("添加失败");
					}
				}
			});

		});
		$("#insertfavorite").click(function() {
			$.ajax({
				type : "post",
				url : "insertfavorite?userid=" + "${session.userinfo.userid}"
					+ "&medicineid=" + "${medicineinfo.medicineid}"
					+ "&mprice=${medicineinfo.mprice}"
					+ "&medicinename=${medicineinfo.medicinename}"
					+ "&picture=${medicineinfo.picture}",
				dateType : "json",
				success : function(data) {
					if (data.issuccess == "nouser") {
						alert("请先登录");
					} else if (data.issuccess == "success") {
						alert("添加成功");
					} else {
						alert("添加失败");
					}
				}
			});
		});
	});
</script>

</head>

<body>
	<jsp:include page="topbar.jsp"></jsp:include>
	<s:set value="#request.medicineinfo" name="medicineinfo"></s:set>
	<div style="width: 1190px;" class="container">
		<div class="col-md-4">
			<img alt="" src='<s:property value="#medicineinfo.picture"/>'>
		</div>
		<div class="col-md-8">
			<h3 style="font-weight: bold">
				<img alt="自营" src="img/self.jpg">${medicineinfo.medicinename}</h3>
			<br>

			<div>
				价格:<span style="font-weight: bold;font-size:30px; color:red;">￥${medicineinfo.mprice}</span>
			</div>
			<br>
			<div>
				数量: <input value="1" name="categorienum" id="categorienum">
			</div>
			<br>
			<div>
				<s:if test="#medicineinfo.stock>0">
					<button id="insertbuycar" class="btn btn-primary">加入购物车</button>
				</s:if>
				<s:else>
					<button id="insertbuycar" class="btn btn-primary disabled">加入购物车</button>
				</s:else>
				<button id="insertfavorite" class="btn btn-default">添加到收藏</button>
			</div>
			<div>
				<img alt="" src="img/tips.jpg">
			</div>
		</div>
	</div>
	<div style="width: 1190px;" class="container">
		<h4>商品详情</h4>
		<p>药品名称:${medicineinfo.medicinename}
		<p>主要成分:${medicineinfo.composition}
		<p>主要作用:${medicineinfo.effect}
		<p>用法用量:${medicineinfo.usage}
		<p>生产日期:${medicineinfo.productiondate}
		<p>保质期:${medicineinfo.shelflife}
	</div>
	<div style="width: 1190px;" class="container"></div>
</body>
</html>
