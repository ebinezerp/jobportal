package jobportal.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jobportal.services.DBConnection;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	Connection con=	DBConnection.getConnection();
	
	      try {
			PreparedStatement preparedStatement=con.prepareStatement("insert into customer values(?,?,?,?,?,?,?)");
			preparedStatement.setString(1, req.getParameter("firstname"));
			preparedStatement.setString(2, req.getParameter("lastname"));
			preparedStatement.setString(3, req.getParameter("email"));
			preparedStatement.setString(4, req.getParameter("mobile"));
			preparedStatement.setString(5, req.getParameter("role"));
			preparedStatement.setString(6, req.getParameter("username"));
			preparedStatement.setString(7, req.getParameter("password"));
			if(preparedStatement.executeUpdate()>0)
			{
				req.getRequestDispatcher("login.jsp").forward(req, resp);
			}else
			{
				req.setAttribute("regerror", "sorry registration is unsuccessful. Try again later!!!");
				req.getRequestDispatcher("register.jsp").forward(req, resp);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		
	}

}
