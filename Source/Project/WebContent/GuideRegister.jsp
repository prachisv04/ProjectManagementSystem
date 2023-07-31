<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.servlet.*,java.util.*,java.util.concurrent.TimeUnit" %>

<% 
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MiniProject","sanket","pict123");
try{
	int flag=0;
	 String name=request.getParameter("name");
	 String misid=request.getParameter("misid");
	 String Email=request.getParameter("email");
	 Long mobile=Long.parseLong(request.getParameter("mob"));
	 
	 String pass1=request.getParameter("pass");
	 String pass2=request.getParameter("confirm");
	 
	 if(pass1.equals(request.getParameter("confirm")))
	 {
		 
		
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from Guide where ID='"+misid+"'");
			if(!rs.next())
			{
		 st.executeUpdate("insert into Guide values('"+misid+"','"+name+"','"+Email+"','"+mobile+"','"+pass1+"')");
	   response.sendRedirect("LoginGuide.jsp");		
			}
			else
			{	 
				request.setAttribute("flag","1");
				 RequestDispatcher rd=request.getRequestDispatcher("GuideReghtml.jsp");  
			     rd.forward(request, response);
			} 
			 con.close();
	 }
	
}
finally
{
	con.close();
}
	 %>

