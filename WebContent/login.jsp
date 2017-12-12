<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Job Portal - Login</title>
<link rel="stylesheet" href="./styles/style1.css">
</head>
<body>
	<div id="wrapper">
		<%@include file="./includes/header.jsp"%>
		<div id="content">
			<div id="advertise">
				<img src="./images/advt1.jpg" alt="Advertisement1"/>
			</div>
			<div id="login">
				<center>
					<form action="Login" method="post">
						<table>
							<tr><td><%=request.getAttribute("authentication")!=null? request.getAttribute("authentication"):"" %></td></tr>
							<tr>
								<td><label>Username</label></td>
							</tr>
							<tr>
								<td><input type="text" name="username"
									placeholder="USERNAME" required="true" /></td>
							</tr>
							<tr>
								<td><label>Password</label></td>
							</tr>
							<tr>
								<td><input type="text" name="password"
									placeholder="Password" required="true" /></td>
							</tr>
							<tr>
							<tr>
								<td align="center"><input type="submit" value="Login"></td>
							</tr>
							<tr><td align="center"><a href="register.jsp">Create new Account</a></td></tr>
						</table>

					</form>
				</center>
			</div>
		</div>
		<%@include file="./includes/footer.jsp"%>
	</div>
</body>
</html>