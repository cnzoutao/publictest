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
    
    <title>register.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
  	<s:form action="myregister" method="post" cssStyle=" width:300px; margin:auto">
  		<s:textfield label="UserName" name="registerInfo.userName"></s:textfield><br>
  		<s:password label="Password" name="registerInfo.password"></s:password><br>
  		<s:textfield label="Email" name="registerInfo.email"></s:textfield><br>
  		<s:textfield label = "NickName" name="registerInfo.nickname"></s:textfield><br>
  		<s:textfield label = "PhoneNumber" name="registerInfo.phonenum"></s:textfield><br>
  		<s:radio list="#{'男':'男', '女':'女'}" label="Gender" name="registerInfo.sex" value="'男'"></s:radio>
  		<s:select list="#{'北京':'北京','天津':'天津','上海':'上海','重庆':'重庆','湖北':'湖北','湖南':'湖南','广东':'广东'}" label="Adress" name="registerInfo.address"></s:select><br>
  		<s:set name="interestmap" value="{'篮球', '足球'}"></s:set>
  		<s:checkboxlist list="#interestmap"  label="Interest" name="registerInfo.interest"></s:checkboxlist>
  		<s:textarea label="Self introduction" name="registerInfo.introduction"></s:textarea>
  		<s:submit label="Submit" ></s:submit>
  	</s:form>
  	
  	
  </body>
</html>
