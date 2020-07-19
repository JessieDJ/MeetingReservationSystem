<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Agent Information</title>
</head>
<body>
	<s:iterator value="list">
	
		<s:property value="AgentId"/>
		<s:property value="AgentName"/>
		<s:property value="CreditCardNo"/>
		<s:property value="Sex"/>
	</s:iterator>
	<!-- 

			<id name="AgentID"></id>
		<property name="AgentName"></property>
		<property name="CreditCardNo"></property>
		<property name="Sex"></property>
 --></body>
</html>