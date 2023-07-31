<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.* , javax.servlet.*, java.util.*,java.sql.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%


String bach=request.getParameter("bth");
String act=request.getParameter("activity");
String d1=request.getParameter("date1");

java.sql.Date date1 = Date.valueOf(d1);

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MiniProject","sanket","pict123");
Statement st=con.createStatement();
st.executeUpdate("insert into Schedule values('"+bach+"','"+act+"','"+date1+"');");
response.sendRedirect("Schedule.jsp");
%>
</body>
</html>