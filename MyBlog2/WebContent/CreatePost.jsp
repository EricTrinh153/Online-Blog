<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Post</title>
<script type="text/javascript" src="http://js.nicedit.com/nicEdit-latest.js"></script> <script type="text/javascript">
//<![CDATA[
bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
//]]>

</script>
</head>
<body>
<div class="topnav">
	<div class="a"><h><b><font size="6" color="#002ccc">BIT235 BLOG</font></b></h></div>
  <a class="active" href="Home.jsp">Home</a>
  <a href="Blog.jsp">Blog</a>
  <a href="#about">About</a>
  <a href="#contact">Contact</a>
  <div class="search-container">
    <form action="/action_page.php">
      <input type="text" placeholder="Search.." name="search">
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
  </div>
</div>
<form action="MyBlogController" method="post">
Post title <input type="text" name="ptitle"><br>
Category <select>
<option value=-1>Select category</option>
<%
try{
	String DB_URL = "jdbc:mysql://localhost:3306/login?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=UTC";
	
	 Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection conn = DriverManager.getConnection(DB_URL,"root","password");
	Statement stmt = conn.createStatement();

	String sql = "SELECT * from category";
	ResultSet rs = stmt.executeQuery(sql);
	while(rs.next())
	{
		%>
		<option value="<%= rs.getInt("category_ID") %>"><%= rs.getString("Title") %>></option>
		<%
	}
	
}
catch(Exception e){
	e.printStackTrace();
	out.println("Error"+e);
}
%>
</select><br>
Post content <textarea name="pcontent" cols="40">
</textarea><br>

<input type="submit" value="Submit">
</form>
</body>
</html>