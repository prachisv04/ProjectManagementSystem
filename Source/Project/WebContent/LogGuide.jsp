<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@
	page import="java.sql.*,javax.servlet.*,java.util.*"%>
	<% 
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MiniProject","sanket","pict123");
	try{
	int flag=0;
	String user=request.getParameter("username");
	String pass=request.getParameter("pass");
	
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select password from Guide where ID='"+user+"'");
	if(rs.next())
	{
	if(pass.equals(rs.getString(1)))
	{
		session.setAttribute("guideid",user);
		response.sendRedirect("GuideHome.jsp");
	}
	else
	{
		request.setAttribute("flag", "1");
		RequestDispatcher rd=request.getRequestDispatcher("LoginGuide.jsp");  
	     rd.forward(request, response);
	}
	}
	else
	{
		request.setAttribute("flag", "1");
		RequestDispatcher rd=request.getRequestDispatcher("LoginGuide.jsp");  
	     rd.forward(request, response);
	}
	}
	
	
	finally
	{
		con.close();
	}
%>