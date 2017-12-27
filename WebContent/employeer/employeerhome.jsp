<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../styles/style1.css">
</head>
<body>

<% if(session.getAttribute("username")!=null && session.getAttribute("role").toString().equalsIgnoreCase("employeer")) 

{
%>
<div id="wrapper">
	<%@include file="../includes/employeer_header.jsp" %>
	<div id="content"></div>
	<div></div>
</div>

<%
}else
{
	response.sendRedirect("login.jsp");
}%>
</body>
</html>