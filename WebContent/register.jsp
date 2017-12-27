<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Job Portal - Registration</title>
<link rel="stylesheet" href="./styles/style1.css" />
</head>
<body>

	<div id="wrapper">
		<%@include file="./includes/header.jsp"%>
		<div id="content">
			<div id="advertise">
				<img src="./images/advt1.jpg" alt="Adverstise" /> <img
					src="./images/advt1.jpg" alt="Adverstise" />
			</div>
			<div id="register">
				<form action="Registration" method="post">

					<table>
						<tr>
							<td align="center"><h2>Registration</h2></td>
						</tr>
						<tr>
							<td><label>First Name</label></td>
						</tr>
						<tr>
							<td><input type="text" name="firstname"
								placeholder="First Name" />
								<div class="errors"><%=request.getAttribute("firstname") != null ? request.getAttribute("firstname") : ""%></div></td>
						</tr>
						<tr>
							<td><label>First Name</label></td>
						</tr>
						<tr>
							<td><input type="text" name="lastname"
								placeholder="Last Name" required="true" />
								<div class="errors"><%=request.getAttribute("lastname") != null ? request.getAttribute("lastname") : ""%></div></td>
						</tr>
						<tr>
							<td><label>Email</label></td>
						</tr>
						<tr>
							<td><input type="email" name="email" placeholder="Email"
								required="true" />
								<div class="errors"><%=request.getAttribute("email") != null ? request.getAttribute("email") : ""%></div>
								<div class="errors"><%=request.getAttribute("emailExistance") != null ? request.getAttribute("emailExistance") : ""%></div>
							</td>
						</tr>
						<tr>
							<td><label>Mobile</label></td>
						</tr>
						<tr>
							<td><input type="tel" name="mobile" placeholder="Mobile"
								required="true" />
								<div class="errors"><%=request.getAttribute("mobile") != null ? request.getAttribute("mobile") : ""%></div></td>
						</tr>
						<tr>
							<td><select name="role">
									<option index="-1">Select Role</option>
									<option value="Job Seeker">Job Seeker</option>
									<option value="Employeer">Employeer</option>
							</select>
								<div class="errors"><%=request.getAttribute("role") != null ? request.getAttribute("role") : ""%></div></td>
						</tr>
						<tr>
							<td><label>Username</label></td>
						</tr>
						<tr>
							<td><input type="text" name="username"
								placeholder="Username">
								<div><%=request.getAttribute("username") != null ? request.getAttribute("username") : ""%></div>
							<div class="errors"><%=request.getAttribute("usernameExistance") != null ? request.getAttribute("usernameExistance") : ""%></div>	
							</td>
						</tr>
						<tr>
							<td><label>Password</label></td>
						</tr>
						<tr>
							<td><input type="password" name="password"
								placeholder="Password" required="true" />
								<div class="errors"><%=request.getAttribute("password") != null ? request.getAttribute("password") : ""%></div></td>
						</tr>
						<tr>
							<td><label>Confirm Password</label></td>
						</tr>
						<tr>
							<td><input type="password" name="confirmpassword"
								placeholder="Confirm Password" required="true" />
								<div class="errors"><%=request.getAttribute("confirmpassword") != null ? request.getAttribute("confirmpassword") : ""%></div></td>
						</tr>
						<tr>
							<td align="center"><input type="submit" value="Register" /></td>
						</tr>
						<tr>
							<td align="center"><a href="login.jsp">Already have
									Account?</a></td>
						</tr>
					</table>

				</form>
			</div>

		</div>


		<%@include file="./includes/footer.jsp"%>
	</div>

</body>
</html>