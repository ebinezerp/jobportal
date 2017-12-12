package jobportal.filter;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import jobportal.services.DBConnection;

/**
 * Servlet Filter implementation class Authentication
 */
@WebFilter("/Login")
public class Authentication implements Filter {

   
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
       Connection con=DBConnection.getConnection();
       
      try {
    	  System.out.println(con);
    	  
		PreparedStatement ps= con.prepareStatement("select * from customer where username=? and password=?");
		ps.setString(1,request.getParameter("username"));
		ps.setString(2, request.getParameter("password"));
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
		  HttpSession session=((HttpServletRequest)request).getSession();
		  session.setAttribute("username", rs.getString("username"));
		 }
		else
		{
			request.setAttribute("authentication", "Authentication Failed!!..");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		
		// pass the request along the filter chain
		chain.doFilter(request, response);
	}

	
}
