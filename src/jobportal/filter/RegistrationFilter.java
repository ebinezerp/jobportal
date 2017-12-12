package jobportal.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * Servlet Filter implementation class RegistrationFilter
 */
@WebFilter("/Registration")
public class RegistrationFilter implements Filter {

	/**
	 * Default constructor.
	 */
	public RegistrationFilter() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		if (request.getParameter("firstname").length() <= 0) {
			request.setAttribute("firstname", "Enter first name");
			request.getRequestDispatcher("register.jsp").include(request, response);

		} else if (request.getParameter("lastname").length() <= 0) {
			request.setAttribute("firstname", "Enter first name");
			request.getRequestDispatcher("register.jsp").include(request, response);

		} else if (request.getParameter("email").length() <= 0) {
			request.setAttribute("email", "Enter an email");
			request.getRequestDispatcher("register.jsp").include(request, response);
		} else if (request.getParameter("mobile").length() <= 0) {
			request.setAttribute("mobile", "Enter a mobile number");
			request.getRequestDispatcher("register.jsp").include(request, response);
		} else if (request.getParameter("role").length() <= 0) {
			request.setAttribute("role", "select a role");
			request.getRequestDispatcher("register.jsp").include(request, response);
		} else if (request.getParameter("username").length() <= 0) {
			request.setAttribute("username", "Enter username");
			request.getRequestDispatcher("register.jsp").include(request, response);
		} else if (request.getParameter("password").length() <= 0) {
			request.setAttribute("password", "Enter password");
			request.getRequestDispatcher("register.jsp").include(request, response);
		} else if (!request.getParameter("password").equals(request.getParameter("confirmpassword"))) {
			request.setAttribute("confirmpassword", "Password and Confirm Password should be same");
			request.getRequestDispatcher("register.jsp").include(request, response);
		}

		// pass the request along the filter chain

		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
