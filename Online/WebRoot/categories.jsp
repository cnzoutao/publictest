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

<title>${title}</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<style type="text/css">
.categoriesimg {
	width: 200px;
	height: 200px;
	overflow: hidden
}

.categoriesimg img {
	max-width: 300px;
	_width: expression(this.width > 300 ? "300px" : this.width);
}
</style>
</head>

<body>
	<jsp:include page="topbar.jsp"></jsp:include>
	<jsp:include page="usermainmenuother.jsp"></jsp:include>
	<div>
		<div class="container">
			<div class="col-md-10">
				<div class="col-md-12">
					<span>${request.operate}</span> <span style="float: right;">搜索结果(${request.medicineinfos.size()})</span>
				</div>
				<div style="float: left;" class="col-md-12">
					<s:iterator value="#request.medicineinfos" id="medicineinfos">
						<div class="col-md-3">
							<div class="categoriesimg" style="padding-top: 10px;">
								<s:a href="viewmedicine?medicineid=%{#medicineinfos.medicineid}">
									<img alt='<s:property value="#medicineinfos.medicinename"/>' src='<s:property value="#medicineinfos.picture"/>'>
								</s:a>
							</div>
							<div style="color:red; font-weight:bold;">
								<span>价格:￥</span><span><s:property
										value="#medicineinfos.mprice" /> </span>
							</div>
							<div>
								<span>药品名称:</span><span style="font-weight:bold;"><s:property
										value="#medicineinfos.medicinename" /> </span>
							</div>
							<s:a href="viewmedicine?medicineid=%{#medicineinfos.medicineid}"
								cssClass="btn btn-default col-md-12">查看详情</s:a>
						</div>
					</s:iterator>
					<%-- <div class="col-md-3">
					<div>
						<a href=""><img alt="" src="img/test123.jpg"></a>
					</div>
					<div>
						<span>价格Test</span>
					</div>
					<div>药品名称Test
					</div>
					<a href="" class="btn btn-default col-md-12">查看详情Test</a>
				</div> --%>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
