<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="jobportal.services.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<%


    if(session.getAttribute("username")!=null)
    {

%>
<a href="Logout"><button>Logout</button></a>
  
  
  
  <%
      
  
      Connection con=DBConnection.getConnection();
  
  PreparedStatement ps= con.prepareStatement("select * from customer where username=? and password=?");
	ps.setString(1,request.getParameter("username"));
	ps.setString(2, request.getParameter("password"));
	ResultSet rs=ps.executeQuery();
    if(rs.next())
    {
    	%>
    	
    	
    	<table>
    		<tr>
    			<td>First Name</td>
    			<td><%=rs.getString(1) %></td>
    		</tr>
    		<tr>
    			<td></td>
    			<td><%=rs.getString(2) %></td>
    		</tr>
    		<tr>
    			<td></td>
    			<td><%=rs.getString(3) %></td>
    		</tr>
    		<tr>
    			<td></td>
    			<td><%=rs.getString(4) %></td>
    		</tr>
    		<tr>
    			<td></td>
    			<td><%=rs.getString(5) %></td>
    		</tr>
    		<tr>
    			<td></td>
    			<td><%=rs.getString(6) %></td>
    		</tr>
    	</table>
    	
    	
    	
    	
    	
    	
    	
    	
   <%}
    }else
    {
    	response.sendRedirect("login.jsp");
    }
  
  %>


</body>
</html>