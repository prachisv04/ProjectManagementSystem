<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.servlet.*,java.util.*" %>

<% 
 
	int flag=0;
	 String name=request.getParameter("name");
	 String misid=request.getParameter("misid");
	 String Email=request.getParameter("email");
	 Long mobile=Long.parseLong(request.getParameter("mob"));
	 
	 String pass1=request.getParameter("pass");
	 String pass2=request.getParameter("confirm");
	 
	 if(pass1.equals(request.getParameter("confirm")))
	 {
		 
		 Class.forName("com.mysql.jdbc.Driver");
		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MiniProject","sanket","pict123");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from co_ordinator where c_id='"+misid+"'");
			if(!rs.next())
			{
				st.executeUpdate("insert into co_ordinator values('"+misid+"','"+name+"','"+Email+"','"+mobile+"','"+pass1+"')");
				   response.sendRedirect("Logincoordinator.jsp");
			}
			else
			{	 
				request.setAttribute("flag","1");
				 RequestDispatcher rd=request.getRequestDispatcher("CoordinatorReg.jsp");  
			     rd.forward(request, response);
			} 
			 con.close(); 
	 }
	 else
	 {
		 request.setAttribute("flag","1");
		 RequestDispatcher rd=request.getRequestDispatcher("/coordinatorRegister.html");  
	     rd.forward(request, response);  
	 }
	
	 %>

