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
<link href="ass/css/admin.css" rel="stylesheet" type="text/css">
<link href="ass/css/amazeui.css" rel="stylesheet" type="text/css">
<link href="ass/css/colstyle.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
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
					<div class="user-collection">
						<h3 class="">我的收藏</h3>
						<hr>
						<div class="you-like">
							<div class="s-content">
								<s:iterator value="#request.favoritesinfos" id="fav">

									<div class="s-item-wrap">
										<div class="s-item">
											<div class="s-pic">
												<s:a href="viewmedicine?medicineid=%{#fav.medicineid}"
													class="s-pic-link">
													<img class="s-pic-img s-guess-item-img"
														alt='<s:property value="#fav.medicinename"/>'
														src='<s:property value="#fav.picture"/>'>
												</s:a>
											</div>
											<div class="s-info">
												<div class="s-title">
													<s:a href="viewmedicine?medicineid=%{#fav.medicineid}">
														<s:property value="#fav.medicinename" />
													</s:a>
													<span class="s-price"><em class="s-price-sign">¥</em><em
														class="s-value"><s:property value="#fav.mprice" /></em></span>
												</div>
												<div class="s-price-box"></div>
												<div class="s-extra-box"></div>
											</div>
											<div class="s-tp">
												<%-- <s:a cssClass="ui-btn-loading-before">加入购物车</s:a> <i
												class="am-icon-shopping-cart"></i> --%>
												<s:a
													href="delfavorites?userid=%{#fav.userid}&favoriteid=%{#fav.favoriteid}"
													cssClass="ui-btn-loading-before">取消收藏</s:a>
											</div>
										</div>
									</div>
								</s:iterator>
							</div>
						</div>
					</div>
				</s:else>
			</div>
		</div>
	</div>
</body>
</html>
