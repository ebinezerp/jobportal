package jobportal.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jobportal.services.DBConnection;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		       Connection con=DBConnection.getConnection();
			  
				PreparedStatement ps;
				try {
					ps = con.prepareStatement("select * from customer where username=?");
					ps.setString(1,req.getSession().getAttribute("username").toString());
					
					ResultSet rs=ps.executeQuery();
					if(rs.next())
					{
						req.getSession().setAttribute("role", rs.getString("role"));
					   if(rs.getString("role").equalsIgnoreCase("Job Seeker"))
					   {
						   resp.sendRedirect("jobseeker/jobseekerhome.jsp");
					   }else if(rs.getString("role").equalsIgnoreCase("employeer"))
					   {
						   resp.sendRedirect("employeer/employeerhome.jsp");
					   }
					 }
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				
		
		
		
		
	}

}
