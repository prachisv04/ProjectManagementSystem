<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
       <%@ page import="java.sql.* , javax.servlet.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
session.removeAttribute("guideid");
session.removeAttribute("coid");
session.removeAttribute("batch");
session.invalidate();
response.sendRedirect("index.html");
%>
</body>
</html>