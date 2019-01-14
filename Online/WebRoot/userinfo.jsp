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

<title>用户信息</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

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
					<s:set name="userinfo" value="#session.userinfo"></s:set>
					<div class="col-md-8">
						<s:form theme="simple" method="post" action="modifyuserinfo"
							role="form">
							<div class="form-group">
								<label>用户ID:</label>
								<s:textfield name="userinfo.userid" value="%{#userinfo.userid}"
									readonly="true" cssClass="form-control"></s:textfield>
							</div>
							<s:hidden name="userinfo.userpassword" value="%{#userinfo.userpassword}"></s:hidden>
							<div class="form-group">
								<label>姓名:</label>
								<s:textfield name="userinfo.username"
									value="%{#userinfo.username}" cssClass="form-control"></s:textfield>
							</div>
							<div class="form-group">
								<label>性别:</label>
								<s:radio list="#{'man':'男', 'female':'女'}" name="userinfo.sex"
									value="%{#userinfo.sex}"></s:radio>
							</div>
							<div class="form-group">
								<label>常用药:</label>
								<s:textarea name="userinfo.commonmed"
									value="%{#userinfo.commonmed}" cssClass="form-control"></s:textarea>
								<span class="help-block">药不能停</span>
							</div>
							<div class="form-group">
								<label>过敏史:</label>
								<s:textarea name="userinfo.allergy" value="%{#userinfo.allergy}"
									cssClass="form-control"></s:textarea>
								<span class="help-block">填写你的一些过敏源之类的</span>
							</div>
							<div class="form-group">
								<label>病史:</label>
								<s:textarea name="userinfo.medhis" value="%{#userinfo.medhis}"
									cssClass="form-control"></s:textarea>
							</div>
							<div class="form-group">
								<label>收货地址:</label>
								<s:textfield name="userinfo.address"
									value="%{#userinfo.address}" cssClass="form-control"></s:textfield>
							</div>
							<s:submit value="修改" cssClass="btn btn-default col-md-2"></s:submit>
						</s:form>
					</div>
				</s:else>
			</div>
		</div>
	</div>
</body>
</html>
