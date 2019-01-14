<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>registerInfo.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<div style="width:300px; margin:auto;padding-top:150px">
  	<s:set name="registerInfo" value="#session['registerInfo']"></s:set>
    UserName:<s:property value="registerInfo.userName"/><br><br>
    Password:<s:property value="registerInfo.password"/><br><br>
    Email:<s:property value="registerInfo.email"/><br><br>
    nickname:<s:property value="registerInfo.nickname"/><br><br>
    phonenum:<s:property value="registerInfo.phonenum"/><br><br>
    sex:<s:property value="registerInfo.sex"/><br><br>
    address:<s:property value="registerInfo.address"/><br><br>
    interest:<s:property value="registerInfo.interest"/><br><br>
    introduction:<s:property value="registerInfo.introduction"/><br><br>
    </div>
  </body>
</html>
