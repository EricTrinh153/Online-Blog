<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="topnav">
	<div class="a"><h><b><font size="6" color="#002ccc">BIT235 BLOG</font></b></h></div>
  <a class="active" href="Home.jsp">Home</a>
  <a href="Blog.jsp" action="MyBlogController" method="post">Blog</a>
  <a href="">About</a>
  <a href="">Contact</a>
  <div class="search-container">
    <form action="/action_page.php">
      <input type="text" placeholder="Search.." name="search">
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
  </div>
</div>
<div id="leftMenu">
	<details>
		<summary><b><font size="4" color="black">Category</font></b></summary>
		<a href=""><b><font size="4">New Post</font></b></a>
		<a href=""><b><font size="4">Technology</font></b></a>
		<a href=""><b><font size="4">Programming</font></b></a>
		<a href=""><b><font size="4">Community</font></b></a>
		<a href=""><b><font size="4">Learning Materials</font></b></a>
		<a href=""><b><font size="4">Events</font></b></a>
	</details>
</div>
<form  >
<a href="CreatePost.jsp"><input type="button" value="Create new post"></a><br>
<a href="CreateCategory.jsp"><input type="button" value="Create new Category"></a><br>
<%
try{
	String DB_URL = "jdbc:mysql://localhost:3306/login?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=UTC";
	
	 Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection conn = DriverManager.getConnection(DB_URL,"root","password");
	Statement stmt = conn.createStatement();

	String sql = "SELECT * from blog_post";
	ResultSet rs = stmt.executeQuery(sql);
	while(rs.next())
	{
		%>
		 <br><strong><%= rs.getString("post_title") %></strong></br><%=rs.getString("post_content") %>
		 <%
	}
	
}
catch(Exception e){
	e.printStackTrace();
	out.println("Error"+e);
}
%>
</form>
</body>
</html>