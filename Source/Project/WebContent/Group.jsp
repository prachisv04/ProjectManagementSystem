<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ page import="java.sql.* , javax.servlet.*, java.util.*,java.util.Date" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Table V04</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="util.css">
  <link rel="stylesheet" type="text/css" href="grps.css">
<!--===============================================================================================-->
</head>
<style>
body {
  margin: 0;
  font-family: "Lato", sans-serif;
}

.h1 
{ 
	text-align: center;
	margin: 1em 0 0.5em 0;
	font-weight: normal;
	position: relative;
	text-shadow: 0 -1px rgba(0,0,0,0.6);
	font-size: 40px;
	line-height: 40px;
	background: #0c2a4d;
	border: 1px solid #fff;
	padding: 5px 15px;
	color: white;
	border-radius: 0 10px 0 10px;
	box-shadow: inset 0 0 5px rgba(53,86,129, 0.5);
	font-family: 'Muli', sans-serif;
	text-transform: uppercase;
	overflow: auto;
 }

 .h2{
 	padding: 5px 15px;
 	margin: 1em 0 0.5em 0;
	font-weight: 600;
	font-family: 'Titillium Web', sans-serif;
	position: relative;
	text-shadow: 0 -1px 1px rgba(0,0,0,0.4);
	font-size: 22px;
	line-height: 40px;
	color: #355681;
	border-bottom: 1px solid rgba(53,86,129, 0.3);
 }

.sidebar {
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #f1f1f1;
  position: absolute;
  height: 100%;
  overflow: auto;
}

.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  background-color: #0c2a4d;
  color: white;
}

.sidebar a:hover:not(.active) {
  background-color: #366dac;
  color: white;
}

div.content {
  margin-left: 200px;
  height: 1000px;
}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
}
</style>
</head>
<body>
<div class="h1">Group Page</div>
<div class="sidebar">
  <a  class="active" href="Group.jsp">Group Info</a>
  <a   href="Activity.jsp">Activity/Task</a>
  <a href="SchGroup.jsp">Schedule</a>
  <a href="logout.jsp">Log Out</a>
</div>
<div class="content">	
		<div class="h2">Group Info</div>
 

<div class="table100 ver1 m-b-110">
          <div class="table100-head">
            <table>
              <thead>
                <tr class="row100 head">
                  <th class="cell100 column2">Group ID:</th>
                  <th class="cell100 column1">Topic Name</th>
                  
 
                </tr>
              </thead>
            </table>
          </div>

          <div class="table100-body js-pscroll">
            <table>
              <tbody>
                <tr class="row100 body">
                  <td class="cell100 column2"><%=session.getAttribute("gid")%></td>
                  <% 
                  Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MiniProject","sanket","pict123");
					Statement st=con.createStatement();
					ResultSet rs=st.executeQuery("select Topic from Stud_Group where Group_id='"+session.getAttribute("gid")+"'");
                 	if(rs.next())
                 	{
					%>
                  <td class="cell100 column1"><%=rs.getString(1) %></td>
                  <% } 
                  rs.close();
                  %>
                </tbody>
            </table>
          </div>
        </div>

<div class="table100 ver1 m-b-110">
          <div class="table100-head">
            <table>
              <thead>
                <tr class="row100 head">
                  <th class="cell100 column1">Name</th>
                  <th class="cell100 column3">Roll no.</th>
                  <th class="cell100 column2">Batch</th>
 
                </tr>
              </thead>
            </table>
          </div>

          <div class="table100-body js-pscroll">
            <table>
              <tbody>
                <tr class="row100 body">
                <% 
                Statement st1=con.createStatement();
                String stud1="";
                String batch="";
                ResultSet rs1=st1.executeQuery("select stud1 from Group_details where Group_id='"+session.getAttribute("gid")+"'");
                if(rs1.next())
                {
                	stud1=rs1.getString(1);
                }
                rs1.close();
                ResultSet rs2=st1.executeQuery("select Name,Roll_no,Batch from Student where MIS_ID='"+stud1+"'");
                if(rs2.next())
                {
              	batch=rs2.getString(3);
                %>
                  <td class="cell100 column1"><%= rs2.getString(1)%></td>
                  <td class="cell100 column3"><%= rs2.getInt(2)%></td>
                  <td class="cell100 column2"><%=batch %></td>
                  <%
                  }
                	session.setAttribute("batch",batch);
                	rs2.close();
                %>
                 </tr>
                   <tr class="row100 body">
                <%  
                Statement st2=con.createStatement();
                String stud2="";
                ResultSet rs3=st2.executeQuery("select stud2 from Group_details where Group_id='"+session.getAttribute("gid")+"'");
                if(rs3.next())
                {
                	stud2=rs3.getString(1);
                }
                rs3.close();
                ResultSet rs4=st2.executeQuery("select Name,Roll_no,Batch from Student where MIS_ID='"+stud2+"'");
                if(rs4.next())
                {
                
                %>
               
                
                 <td class="cell100 column1"><%= rs4.getString(1)%></td>
                  <td class="cell100 column3"><%= rs4.getInt(2)%></td>
                  <td class="cell100 column2"><%= rs4.getString(3)%></td>
              
                <%
                }
                rs2.close();
                %>
                  </tr>
                  <tr class="row100 body">
                    <%  
                Statement st3=con.createStatement();
                String stud3="";
                ResultSet rs5=st3.executeQuery("select stud3 from Group_details where Group_id='"+session.getAttribute("gid")+"'");
                if(rs5.next())
                {
                	stud3=rs5.getString(1);
                }
                
                rs3.close();
                ResultSet rs6=st3.executeQuery("select Name,Roll_no,Batch from Student where MIS_ID='"+stud3+"'");
                if(rs6.next())
                {
                
                %>
               
                  
                   <td class="cell100 column1"><%= rs6.getString(1)%></td>
                  <td class="cell100 column3"><%= rs6.getInt(2)%></td>
                  <td class="cell100 column2"><%= rs6.getString(3)%></td>
                </tr>
                 <%
                }
                
                rs6.close();
                %>
                <tr class="row100 body">
                    <%  
                Statement st4=con.createStatement();
                String stud4="";
                ResultSet rs7=st4.executeQuery("select stud from Group_details where Group_id='"+session.getAttribute("gid")+"'");
                if(rs7.next())
                {
                	stud4=rs7.getString(1);
                }
                rs7.close();
                ResultSet rs8=st2.executeQuery("select Name,Roll_no,Batch from Student where MIS_ID='"+stud4+"'");
                if(rs8.next())
                {
                
                %>
               
                  
                   <td class="cell100 column1"><%= rs8.getString(1)%></td>
                  <td class="cell100 column3"><%= rs8.getInt(2)%></td>
                  <td class="cell100 column2"><%= rs8.getString(3)%></td>
                </tr>
                 <%
                }
                
                rs8.close();
                %>

                                                  
              </tbody>
            </table>
          </div>
        </div>
        </div>
</body>
</html>