<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,javax.servlet.*,java.sql.*"  %>

<% 
	
String topic=request.getParameter("topic");

Random random = new Random();

int id=random.ints(1000,1001, 99999).findFirst().getAsInt();

%>
	<script>
	document.getElementById("id").value=id;
	</script>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MiniProject","sanket","pict123");
	Statement st=con.createStatement();
	
String num=request.getParameter("no");
String pass=request.getParameter("pass");
String pass2=request.getParameter("repass");
String stud1=request.getParameter("stud1");
String stud2=request.getParameter("stud2");
String stud3=request.getParameter("stud3");
String stud4=request.getParameter("stud4");
String callsetGroup="{CALL setGroup('"+id+"')}";
ResultSet r=st.executeQuery("select Batch from Student where MIS_ID='"+stud1+"'");
r.next();

String batch=r.getString(1);
String callsetGuide="{CALL setGuide('"+batch+"','"+id+"') }";


	int i=0;
if(pass.equals(pass2))
{
		
	ResultSet rs=st.executeQuery("select * from Student where MIS_ID='"+stud1+"'");
	if(rs.next())
	{
		if(rs.getInt(8)==0)
		{
			ResultSet rs1=st.executeQuery("select * from Student where MIS_ID='"+stud2+"'");
			if(rs1.next())
			{
				if(rs1.getInt(8)==0)
				{
					if(stud3!="")
					{
					ResultSet rs2=st.executeQuery("select * from Student where MIS_ID='"+stud3+"'");
					if(rs2.next())
					{
						if(rs2.getInt(8)==0)
						{
							if(stud4!="")
							{
							ResultSet rs3=st.executeQuery("select * from Student where MIS_ID='"+stud4+"'");
							if(rs3.next())
							{
								if(rs3.getInt(8)==0)
								{
									i=1;
								}
								else
								{
									request.setAttribute("student","4");
										
								}//student 4 is not in group
									
							}//student 4 not exists
							else
							{
								request.setAttribute("studnum","4");
							}	
							}//student 4 is null
							else
							{
								i=1;
							}
						}//student 3 is not in group
						else
						{
							request.setAttribute("student","3");
						}
					}//student 3 not exists
					else
					{
						request.setAttribute("studnum","3");	
					}
					}//student 3 is null
					else
					{
						i=1;
					}
				}//student 2 is not in group
				else
				{
					request.setAttribute("student","2");
				}
				
			} //student 2 not found
			else
			{
				request.setAttribute("studnum","2");	
			}
		} // no group formed for student 1 
		else
		{
			request.setAttribute("student","1");
		}
			
	}//student 1 found
	else
	{
		request.setAttribute("studnum","1");
	}
	if(i==1)
	{
		if(num.equals("2"))
		{
			st.executeUpdate("insert into Stud_Group values('"+id+"','"+topic+"','"+num+"','"+pass+"')");
			st.executeUpdate("insert into Group_details(group_id,stud1,stud2) values('"+id+"','"+stud1+"','"+stud2+"')");
			CallableStatement stmt = con.prepareCall(callsetGroup);
			CallableStatement stmt1 = con.prepareCall(callsetGuide);
			stmt.executeQuery();
			stmt1.executeQuery();
			response.sendRedirect("LoginStudent.jsp");
		}
		else if(num.equals("3"))
		{
			st.executeUpdate("insert into Stud_Group values('"+id+"','"+topic+"','"+num+"','"+pass+"')");
			st.executeUpdate("insert into Group_details(group_id,stud1,stud2,stud3) values('"+id+"','"+stud1+"','"+stud2+"','"+stud3+"')");
			CallableStatement stmt = con.prepareCall(callsetGroup);
			CallableStatement stmt1 = con.prepareCall(callsetGuide);
			stmt.executeQuery();
			stmt1.executeQuery();
			response.sendRedirect("LoginStudent.jsp");
		}
		else
		{
			st.executeUpdate("insert into Stud_Group values('"+id+"','"+topic+"','"+num+"','"+pass+"')");
			
			st.executeUpdate("insert into Group_details values('"+id+"','"+stud1+"','"+stud2+"','"+stud3+"','"+stud4+"')");
			CallableStatement stmt = con.prepareCall(callsetGroup);
			CallableStatement stmt1 = con.prepareCall(callsetGuide);
			stmt.executeQuery();
			stmt1.executeQuery();
			response.sendRedirect("LoginStudent.jsp");
		}
	}
	else
	{
		request.setAttribute("flag", "1");
		
		RequestDispatcher rd=request.getRequestDispatcher("createhtml.jsp");  
	     rd.forward(request, response);
	}

	
} //password check
else
{
	request.setAttribute("flag", "2");
	RequestDispatcher rd=request.getRequestDispatcher("createhtml.jsp");  
     rd.forward(request, response);
}


%>