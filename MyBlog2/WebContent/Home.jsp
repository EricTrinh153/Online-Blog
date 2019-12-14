<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Welcome <%=request.getParameter("user") %>
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
</body>
</html>