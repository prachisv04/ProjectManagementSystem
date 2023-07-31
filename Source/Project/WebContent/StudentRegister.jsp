<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.* , javax.servlet.*, java.util.*" %>
<html>
<head>
<title>Registered</title>
</head>
<body>
<%  Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MiniProject","sanket","pict123");
 	try{
	 int flag=0;
	 String name=request.getParameter("name");
	 
	 int rollno=Integer.parseInt(request.getParameter("roll"));
	 String misid=request.getParameter("misid");
	
	 String sclass=request.getParameter("class");
	 String batch=request.getParameter("batch");
	 String Email=request.getParameter("email");
	 Long mobile=Long.parseLong(request.getParameter("phone"));
	 int grpid=0;
	
	 Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from Student where MIS_ID='"+misid+"'");
		if(!rs.next())
		{
	
			st.executeUpdate("insert into Student values('"+misid+"','"+rollno+"','"+name+"','"+sclass+"','"+batch+"','"+Email+"','"+mobile+"','"+grpid+"')");
			  response.sendRedirect("index.html");
		}
		else
		{	 
			request.setAttribute("flag","1");
			 RequestDispatcher rd=request.getRequestDispatcher("StudentReg.jsp");  
		     rd.forward(request, response);
		} 
		con.close();
 	}
finally{
	out.println("Exception Occured");	
	con.close();
}

%>

</body>