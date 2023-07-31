<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Assessment</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="util.css">
	<link rel="stylesheet" type="text/css" href="guidehome.css">
	<link rel="stylesheet" type="text/css" href="main.css">
<!--===============================================================================================-->
</head>
<style>
body {
  margin: 0;
  font-family: "Lato", sans-serif;
}


.buttonO {
  border-radius: 5px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 15px;
  padding: 15px 15px;
  width: 130px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 7px;
  height: 40px;
}

.buttonO span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.buttonO span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.buttonO:hover span {
  padding-right: 25px;
}

.buttonO:hover span:after {
  opacity: 1;
  right: 0;
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
  <a  href="Guidegrps.jsp">Groups</a>
   <a class="active" href="Assesment.jsp">Assessment</a>
  <a href="SchGuide.jsp">Schedule</a>
  <a href="logout.jsp">Log Out</a>
</div>
<div class="content">	
		<div class="h2">Assessment Page</div><br>
		<form action="Assess.jsp">
		<label><b>Group ID :</b></label>
		<input class="input100" type="text" name="id" id="id" style="margin-left:100px;margin-top:-30px;"  placeholder="Enter Group ID" autocomplete="off">
   		<center><button class="button" type="submit" name="next" id="next" >Submit</button></center><br><br>
   </form>
  
    <div class="table100 ver1 m-b-110">
          <div class="table100-head">
            <table>
              <thead>
                <tr class="row100 head">
                  <th class="cell100 column1">Activity</th>
                  <th class="cell100 column3">Uploaded file</th>
                  <th class="cell100 column3">Submitted Date</th>
                  <th class="cell100 column2">Status</th>
                </tr>
              </thead>
            </table>
          </div>
          </div>
      
          <div align="center">
          <button class="button" >Submit</button></center><br><br>
          </div>
        
</div>