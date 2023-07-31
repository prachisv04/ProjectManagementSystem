<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.* , javax.servlet.*, java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Table V04</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="util.css">
	<link rel="stylesheet" type="text/css" href="guidehome.css">
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
<div class="h1">Guide Page</div>
<div class="sidebar">
  <a href="GuideProfile.jsp">Profile</a>
  <a class="active" href="Guidegrps.jsp">Groups</a>
   <a href="Assesment.jsp">Assessment</a>
  <a href="SchGuide.jsp">Schedule</a>
  <a href="logout.jsp">Log Out</a>
</div>
<div class="content">	
		<div class="h2">List of Group under Guide</div>
				<div class="table100 ver1 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1">Topic</th>
									<th class="cell100 column2">Group ID</th>
								
									<th class="cell100 column4">Status</th>
									<th class="cell100 column4">Progress</th>
									
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<tbody>
								<tr class="row100 body">
								<% 
								Class.forName("com.mysql.jdbc.Driver");
								int id=0;
								String project="";
								Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MiniProject","sanket","pict123");
								Statement st=con.createStatement();
								Statement st1=con.createStatement();
								int flag=0;
								ResultSet rs=st.executeQuery("select DISTINCT Group_id from association where Guide_id='"+session.getAttribute("guideid")+"' ");
								while(rs.next())
								{
										id=rs.getInt(1);
									
									
									ResultSet rs1=st1.executeQuery("select Topic from Stud_Group where Group_id='"+rs.getInt(1)+"'");
									
									if(rs1.next())
									{
									project=rs1.getString(1);
									}
								%>
									<td class="cell100 column1">
									<%=project%> 
									</td>
									<td class="cell100 column2"><%=id%> </td>
									
									<td class="cell100 column4">OPEN</td>
									<td class="cell100 column5">0%</td>
									</tr>
								<%
								
								}
								
								rs.close();
								
								con.close();
								%>

							
								
							</tbody>
						</table>
					</div>
				</div>
				</div>
</body>
</html>