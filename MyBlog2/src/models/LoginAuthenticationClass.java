package models;

import java.sql.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginAuthenticationClass {
	public String LoginAuthentication(String username, String password) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated constructor stub
		String DB_URL = "jdbc:mysql://localhost:3306/login?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=UTC";
		Connection conn = null; 
		Statement stmt = null;
		ResultSet rs = null; 
		String returnVal="fail";
		
		
		
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DB_URL,"root","password");
			stmt = conn.createStatement();
		
			String sql = "SELECT username FROM userlogin where username like'" +username+"' and password ='"+password+"'";
			rs = stmt.executeQuery(sql);
			if (rs.next())
				returnVal = "success";
		if (conn!= null)
				conn.close();
	return returnVal; 
	}

	
}
