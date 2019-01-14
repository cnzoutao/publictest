<%@page import="com.vo.Orderitem"%>
<%@page import="com.vo.Userorder"%>
<%@page import="com.dao.OrderDao"%>
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

<title>支付订单</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="ass/css/amazeui.css" rel="stylesheet" type="text/css" />
<link href="ass/css/cartstyle.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link href="ass/css/cartstyle.css" rel="stylesheet" type="text/css" />
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
					<%
						OrderDao orderDao = new OrderDao();
							String orderid = (String) request.getAttribute("nopayorderid");
							Userorder orders = orderDao.loadUserorder(orderid);
							Set items = orders.getOrderitems();
					%>
					<div>
						<h3>
							确认订单信息:<%=orderid%></h3>
					</div>
					<table class="table table-striped ">
						<thead>
							<tr>
								<th class="col-md-6">商品信息</th>
								<th class="col-md-1">单价</th>
								<th class="col-md-2" style="text-align: center;">数量</th>
								<th class="col-md-1">金额</th>
								<th class="col-md-2" style="text-align: center;">配送方式</th>
							</tr>
						</thead>
						<tbody>
							<%
								for (Object item : items) {
										Orderitem each = (Orderitem) item;
							%>
							<tr>
								<td><%=each.getMedicinename()%></td>
								<td><%=each.getPrice()%></td>
								<td style="text-align: center;">x<%=each.getNum()%></td>
								<td><%=each.getSubtotal()%></td>
								<td style="text-align: center;">包邮</td>
							</tr>
							<%
								}
							%>


						</tbody>
					</table>
					<div class="clear"></div>
					<div class="pay-total">
						<!--留言-->
						<div class="order-extra">
							<div class="order-user-info">
								
							</div>

						</div>

						<div class="clear"></div>
					</div>
					<!--含运费小计 -->
					<div class="buy-point-discharge ">
						<p class="price g_price ">
							合计（含运费） <span>¥</span><em class="pay-sum"><%=orders.getTotalmoney()%></em>
						</p>
					</div>

					<!--信息 -->
					<div class="order-go clearfix">
						<div class="pay-confirm clearfix">
							<div class="box">
								<div id="holyshit268" class="pay-address">

									<p class="buy-footer-address">
										<span class="buy-line-title buy-line-title-type">寄送至：<%=orders.getUserinfo().getAddress()%>
										</span>
									</p>
									<p class="buy-footer-address">
										<span class="buy-line-title">收货人：</span> <span
											class="buy-address-detail"> <span class="buy-user"><%=orders.getUserinfo().getUsername()%>
										</span> <%-- <span class="buy-phone">15871145629</span> --%>
										</span>
									</p>
								</div>
							</div>

							<div id="holyshit269" class="submitOrder">
								<div class="go-btn-wrap">
									<a id="J_Go" href="usergotopay?orderid=<%=orderid%>" class="btn-go" tabindex="0"
										title="点击此按钮，提交订单">支付订单</a>
								</div>
							</div>
						</div>
					</div>
				</s:else>
			</div>


		</div>
	</div>

</body>
</html>
