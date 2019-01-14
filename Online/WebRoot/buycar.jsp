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
<link href="ass/css/amazeui.css" rel="stylesheet" type="text/css" />
<link href="ass/css/cartstyle.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>

<body>
	<jsp:include page="topbar.jsp"></jsp:include>
	<jsp:include page="usermainmenuother.jsp"></jsp:include>
	<div class="">
		<div class="container">
			<jsp:include page="usermanage.jsp"></jsp:include>
			<div class="col-md-10">
				<s:if test="null==#session.userinfo||#session.userinfo.isEmpty()">
					<p>please login first</p>
				</s:if>
				<s:else>
					<s:set name="buycarinfos" value="#request.buycarinfos"></s:set>
					<div class="concent">
						<div id="cartTable">
							<div class="cart-table-th">
								<div class="wp">
									<div class="th th-chk">
										<div id="J_SelectAll1" class="select-all J_SelectAll"></div>
									</div>
									<div class="th th-item">
										<div class="td-inner">商品信息</div>
									</div>
									<div class="th th-price">
										<div class="td-inner">单价</div>
									</div>
									<div class="th th-amount">
										<div class="td-inner">数量</div>
									</div>
									<div class="th th-sum">
										<div class="td-inner">金额</div>
									</div>
									<div class="th th-op">
										<div class="td-inner">操作</div>
									</div>
								</div>
							</div>
							<table>
								<tr class="item-list">
									<!-- 购物车记录 -->
									<s:iterator value="#request.buycarinfos" id="buycarinfo">
										<s:if test="#buycarinfo.size()==0">
											<p>空空如也！
										</s:if>
										<s:else>
											<ul class="item-content clearfix">
												<li class="td td-chk">
													<div class="cart-checkbox ">
														<input class="" id="" name="" value="" type="checkbox" checked="checked">
													</div>
												</li>
												<li class="td td-item">
													<div class="item-pic">
														<a href="#" class="J_MakePoint" data-point="tbcart.8.12">
															<img src='${buycarinfo.picture}'
															class="itempic J_ItemImg">
														</a>
													</div>
													<div class="item-info">
														<div class="item-basic-info">
															<s:a
																href="viewmedicine?medicineid=%{#buycarinfo.medicineid}"
																title='<s:property value="#buycarinfo.medicinename" />'
																class="item-title J_MakePoint" data-point="tbcart.8.11">${buycarinfo.medicinename}</s:a>
														</div>
													</div>
												</li>
												<li class="td td-info">
													<div class="item-props"></div>
												</li>
												<li class="td td-price">
													<div class="item-price price-promo-promo">
														<div class="price-content">
															<div class="price-line">
																<em class="J_Price price-now" tabindex="0">${buycarinfo.mprice}</em>
															</div>
														</div>
													</div>
												</li>
												<li class="td td-amount">
													<div class="amount-wrapper ">
														<div class="item-amount ">
															<div class="sl">
																<input class="" name="" type="button"	value="-" />
																<input class="text_box" name="" type="text" value='${buycarinfo.categorienum}'style="width:30px;" />
																<input class="" name="" type="button" value="+" />
															</div>
														</div>
													</div>
												</li>
												<li class="td td-sum">
													<div class="td-inner">
														<em tabindex="0" class="J_ItemSum number">${buycarinfo.subtotal}</em>
													</div>
												</li>
												<li class="td td-op">
													<div class="td-inner">
														<!-- <a href="#" class="btn-fav" >移入收藏夹</a> -->
														<s:a href="delbuycar?userid=%{#buycarinfo.userid}&buycarid=%{#buycarinfo.buycarid}" class="delete">删除</s:a>
													</div>
												</li>
											</ul>
										</s:else>
									</s:iterator>
								</tr>
							</table>
						</div>
					</div>
					<div class="float-bar-wrapper">
						<div id="J_SelectAll2" class="select-all J_SelectAll">
							<div class="cart-checkbox">
								<input class="check-all check" id="J_SelectAllCbx2"
									name="select-all" value="true" type="checkbox" checked="checked">
							</div>
							<span>全选</span>
						</div>
						<div class="operations">
							<a href="#" hidefocus="true" class="deleteAll">删除</a> <a href="#"
								hidefocus="true" class="J_BatchFav">移入收藏夹</a>
						</div>
						<div class="float-bar-right">
							<div class="price-sum">
								<span class="txt">合计:</span> <strong class="price">¥<em
									id="J_Total">${session.totalmoney}</em></strong>
							</div>
							<div class="btn-area">
								<s:a href="userpaybuycar?userid=%{#session.userinfo.userid}" id="J_Go" cssClass="submit-btn submit-btn-disabled"><span>结&nbsp;算</span></s:a>
							</div>
						</div>

					</div>
				</s:else>
			</div>

		</div>
	</div>
</body>
</html>
