package jobportal.services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal", "root", "root");
		} catch (ClassNotFoundException cnfe) {
			return null;
		} catch (SQLException se) {
			return null;
		}

	}

}
