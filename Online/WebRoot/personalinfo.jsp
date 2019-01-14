<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
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

<title>personalinfo.jsp</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/bootstrap.css">

</head>

<body>
	<s:if test="null==#session.userinfo||#session.userinfo.isEmpty()">
		please login first
	</s:if>
	<s:else>
		<s:set name="userinfo" value="#session.userinfo"></s:set>
		<s:form theme="simple" method="post" action="modifyuserinfo" cssClass="">
			�û�ID:<s:textfield name="userinfo.userid" value="%{#userinfo.userid}" readonly="true"></s:textfield><br>
			����:<s:textfield name="userinfo.username" value="%{#userinfo.username}"></s:textfield><br>
			�Ա�:<s:radio list="#{'man':'��', 'female':'Ů'}" name="userinfo.sex"	value="%{#userinfo.sex}"></s:radio><br>
			����ҩ:<s:textarea name="userinfo.commonmed" value="%{#userinfo.commonmed}"></s:textarea><br>
			����ʷ:<s:textarea name="userinfo.allergy" value="%{#userinfo.allergy}"></s:textarea><br>
			��ʷ:<s:textarea name="userinfo.medhis" value="%{#userinfo.medhis}"></s:textarea><br>
			�ջ���ַ:<s:textfield name="userinfo.address" value="%{#userinfo.address}"></s:textfield><br>
			<s:submit value="�޸�"></s:submit>
		</s:form>
	</s:else>
</body>
</html>
