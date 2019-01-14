<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/cnhn-mainmenu.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

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
	<div style="margin-bottom: -2px;">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<!--visible-lg -->
					<div class="visible-lg" style="position: relative;">
						<div class="product-menu-title">
							<h2>
								<b class="glyphicon glyphicon-align-justify"></b>
								&nbsp;&nbsp;&nbsp;所有药品分类<i
									class="glyphicon glyphicon-circle-arrow-down"></i>
							</h2>
						</div>
						<div class="product-menu">
							<ul>
								<li><a href="navoperate?operate=<%="中西药品"%>"><img
										src="img/menu-l/1.png" alt="" />中西药品</a></li>
								<li><a href="navoperate?operate=<%="营养保健"%>"><img
										src="img/menu-l/2.png" alt="" />营养保健</a></li>
								<li><a href="navoperate?operate=<%="风湿骨科"%>"><img
										src="img/menu-l/3.png" alt="" />风湿骨科</a></li>
								<li><a href="navoperate?operate=<%="参茸花茶"%>"><img
										src="img/menu-l/4.png" alt="" />参茸花茶</a></li>
								<li><a href="navoperate?operate=<%="维生素盖"%>"><img
										src="img/menu-l/5.png" alt="" />维生素盖</a></li>
								<li><a href="#" class="hover-icon"><img
										src="img/menu-l/6.png" alt="" />Laptops Accessories</a>
									<div class="cnmenu">
										<span> <a href="#" class="cnmenu-title">Linux</a> <a
											href="#">Edubuntu</a> <a href="#">Kubuntu</a> <a href="#">Lubuntu</a>
										</span> <span> <a href="#" class="cnmenu-title">Mac </a> <a
											href="#">Mac OS X 10.0</a> <a href="#">Mac OS X 10.7</a> <a
											href="#">OS X 10.11</a>
										</span> <span> <a href="#" class="cnmenu-title">Ubuntu</a> <a
											href="#">Ubuntu Server</a> <a href="#">Ubuntu Studio</a> <a
											href="#">Ubuntu TV</a>
										</span> <span> <a href="#" class="cnmenu-title">Windows</a> <a
											href="#">Windows 10</a> <a href="#">Windows 7</a> <a href="#">Windows
												8.1</a>
										</span>
									</div></li>
								<li><a href="#" class="hover-icon"><img
										src="img/menu-l/12.png" alt="" />Sports Outdoors</a>
									<div class="cnmenu">
										<span> <a href="#" class="cnmenu-title">Electronic</a>
											<a href="#">Bedroom</a> <a href="#">Kitchen</a> <a href="#">Living
												room</a> <a href="#">Out door</a>
										</span> <span> <a href="#" class="cnmenu-title">Lights</a> <a
											href="#">All lights</a> <a href="#">Bed room</a> <a href="#">Living
												room</a> <a href="#">Out door</a>
										</span> <span> <a href="#" class="cnmenu-title">Television</a>
											<a href="#">Samsung</a> <a href="#">Samsung Oled</a> <a
											href="#">Sony</a> <a href="#">Sony Bravia</a>
										</span> <span> <a href="#" class="cnmenu-title">Washing</a> <a
											href="#">Commercial</a> <a href="#">Front-Load </a> <a
											href="#">Pedestal </a> <a href="#">Top-Load </a>
										</span>
									</div></li>
								<li><a href="#" class="hover-icon"><img
										src="img/menu-l/7.png" alt="" />Smartphone Tablets</a>
									<div class="cnmenu cnmenu2">
										<span> <a href="#" class="cnmenu-title">HandBags</a> <a
											href="#">Kids</a> <a href="#">Mens</a> <a href="#">Student</a>
											<a href="#">Women</a>
										</span> <span> <a href="#" class="cnmenu-title">Clothing</a> <a
											href="#">Children</a> <a href="#">Kids</a> <a href="#">Mens</a>
											<a href="#">Womens</a>
										</span>
									</div></li>
								<li><a href="#"><img src="img/menu-l/8.png" alt="" />Health
										Beauty</a></li>
								<li><a href="#"><img src="img/menu-l/9.png" alt="" />Toys
										Hobbies</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-9">
					<div class="mainmenu">
						<ul>
							<li><a href="usermain.jsp">首页</a></li>
							<li><a href="about.html">家庭常备药</a></li>
							<li><a href="javascript:void(0)">待定</a></li>
							<li><a href="javascript:void(0)">待定</a></li>
							<li><a href="javascript:void(0)">待定</a></li>
							<li><a href="javascript:void(0)">待定</a></li>
							<li><a href="javascript:void(0)">待定</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
