package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MyBlogDAO {

	public String MyBlogDAOabc(String post_title, String post_content, String post_date) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		//return null;
		String DB_URL="jdbc:mysql://localhost:3306/login?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=UTC";
		Connection conn = null; 
		Statement stmt = null;
		int rs ; 
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(DB_URL,"root","password");
		stmt = conn.createStatement();
	
		
		String sql = "INSERT INTO blog_post(post_title,post_content,post_date,category_ID) VALUES ('"+post_title+"','"+post_content+"',now(),1)";
		rs = stmt.executeUpdate(sql);
		return sql;
		
	}
	public String BlogContent(String post_content) throws ClassNotFoundException, SQLException {
		String DB_URL="jdbc:mysql://localhost:3306/login?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=UTC";
		Connection conn = null; 
		Statement stmt = null;
		ResultSet rs ; 
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(DB_URL,"root","password");
		stmt = conn.createStatement();
	
		
		String sql = "SELECT post_content FROM blog_post";
		rs = stmt.executeQuery(sql);
		return sql;
	}
	public String MyCategoryConnection(String categoryname) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		String DB_URL="jdbc:mysql://localhost:3306/login?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=UTC";
		Connection conn = null; 
		Statement stmt = null;
		int rs ; 
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(DB_URL,"root","password");
		stmt = conn.createStatement();
	
		
		String sql = "Insert into category(Title) VALUES ('"+categoryname+"')";
		rs = stmt.executeUpdate(sql);
		return sql;
	}


}