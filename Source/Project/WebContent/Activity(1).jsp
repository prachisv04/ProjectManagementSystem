<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.*, javax.servlet.* ,javax.servlet.annotation.WebServlet, java.util.*,java.io.IOException,java.io.InputStream,javax.servlet.annotation.MultipartConfig,javax.servlet.http.Part" %>
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
.button {
  display: inline-block;
  padding: 15px 25px;
  font-size: 15px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: white;
  background-color: #4363d8;
  border: none;
  border-radius: 10px;
  box-shadow: 0 7px #999;
  width: 150px;
}

.button:hover {background-color: #152458}

.button:active {
  background-color: #152458;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
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
  <a  href="Group.jsp">Group Info</a>
  <a  class="active" href="Activity.jsp">Activity/Task</a>
  <a href="SchGroup.jsp">Schedule</a>
  <a href="logout.jsp">Log Out</a>
</div>
<div class="content"> 
    <div class="h2">Activities</div>
	<div class="table100 ver1 m-b-110">
          <div class="table100-head">
            <table>
              <thead>
                <tr class="row100 head">
                  <th class="cell100 column1">Activity</th>
                  <th class="cell100 column3">Upload file</th>
                  <th class="cell100 column3">Submitted Date</th>
                  <th class="cell100 column2">Preview</th>
                  <th class="cell100 column2">Status</th>
 
                </tr>
              </thead>
            </table>
          </div>

          <div class="table100-body js-pscroll">
            <form method="POST" action="FileUpload" enctype="multipart/form-data" >
            <table>
              <tbody>
           
                <tr class="row100 body">
                
                  <td class="cell100 column1">Information Gathering and Analysis</td>
                  <td class="cell100 column3"><input type="file" id="myFile" name="file"></td>
                  <td class="cell100 column3"><input type="text" name="status" id="s1" size="5"></td>
                  <td class="cell100 column2"><input type="text" name="Sdate" id="sd1" size="5"></td>
                  <td class="cell100 column2"><input type="text" name="date" id="d1" size="5"></td>
                </tr>

                  
                  <tr class="row100 body">
                  <td class="cell100 column1">ER Design</td>
                  <td class="cell100 column3"><input type="file" id="myFile" name="file"></td>
                  <td class="cell100 column3"><input type="text" name="status" id="s1" size="5"></td>
                  <td class="cell100 column2"><input type="text" name="Sdate" id="sd3" size="5"></td>
                  <td class="cell100 column2"><input type="text" name="date" id="d3" size="5"></td>

                </tr>
                  <tr class="row100 body">
                  <td class="cell100 column1">Implementation</td>
                  <td class="cell100 column3"><input type="file" id="myFile" name="file"></td>
                  <td class="cell100 column3"><input type="text" name="status" id="s1" size="5"></td>
                  <td class="cell100 column2"><input type="text" name="Sdate" id="sd4" size="5"></td>
                  <td class="cell100 column2"><input type="text" name="date" id="d4" size="5"></td>
                </tr>
                  <tr class="row100 body">
                  <td class="cell100 column1">Deployment</td>
                  <td class="cell100 column3"><input type="file" id="myFile" name="file"></td>
                  <td class="cell100 column3"><input type="text" name="status" id="s1" size="5"></td>
                  <td class="cell100 column2"><input type="text" name="Sdate" id="sd5" size="5"></td>
                  <td class="cell100 column2"><input type="text" name="date" id="d5" size="5"></td>
                </tr>

              </tbody>
            </table>
            <div align="center">
<input type="submit" class="button" value="SUBMIT"><br><br>
</div>
            </form>
            
          </div>
        </div>
        </div>
</body>
</html>