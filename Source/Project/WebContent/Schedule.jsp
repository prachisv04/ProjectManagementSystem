<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.sql.* , javax.servlet.*, java.util.*,java.util.Date.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Table V04</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="util.css">
  <link rel="stylesheet" type="text/css" href="coordinator.css">
<!--===============================================================================================-->
</head>
<style>
body {
  margin: 0;
  font-family: "Lato", sans-serif;
}
.custom-select {
  position: relative;
  font-family: Arial;
}

.custom-select select {
  display: none; /*hide original SELECT element:*/
  
}

.select-selected {
  background-color: #0c2a4d;
}

/*style the arrow inside the select element:*/
.select-selected:after {
  position: absolute;
  content: "";
  top: 14px;
  right: 10px;
  width: 0;
  height: 0;
  border: 6px solid transparent;
  border-color: #fff transparent transparent transparent;
}

/*point the arrow upwards when the select box is open (active):*/
.select-selected.select-arrow-active:after {
  border-color: transparent transparent #fff transparent;
  top: 7px;
}

/*style the items (options), including the selected item:*/
.select-items div,.select-selected {
  color: #ffffff;
  padding: 8px 16px;
  border: 1px solid transparent;
  border-color: transparent transparent rgba(0, 0, 0, 0.1) transparent;
  cursor: pointer;
  user-select: none;
}

/*style items (options):*/
.select-items {
  position: absolute;
  background-color: #4363d8;
  top: 100%;
  left: 0;
  right: 0;
  z-index: 99;
}

/*hide the items when the select box is closed:*/
.select-hide {
  display: none;
}

.select-items div:hover, .same-as-selected {
  background-color: rgba(0, 0, 0, 0.1);
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
<div class="h1">Co-ordinator Page</div>
<div class="sidebar">
  <a href="Co_home.jsp">Profile</a>
  <a  href="guideinfo.jsp">Guides</a>
  <a  class="active" href="Schedule.jsp">Schedule</a>
  <a href="logout.jsp">Log Out</a>
</div>


<div class="content">	
		<div class="h2">Create Schedule</div>
<br>
<form method=" " action="setSchedule.jsp">


</br></br>
<center>
<b>Select Batch:</b>
<div class="custom-select" style="width:200px;" >
  <select  name="bth" style="float:left">
    <option >Batch:</option>
    <option value="L-11">L-11</option>
    <option value="K-11">K-11</option>
    <option value="M-11">M-11</option>
    <option value="N-11">N-11</option>
    
  </select>
</div>

</center>
<br><br>

	

<div class="table100 ver1 m-b-110">
          <div class="table100-head">
            <table>
              <thead>
                <tr class="row100 head">
                  <th class="cell100 column1">
    <select class="custom-select" name="activity" >
    <option >Activity:</option>
    <option value="Information Gathering and Analysis">Information Gathering and Analysis</option>
    <option value="ER diagram">ER diagram</option>
    <option value="Implementation and Testing">Implementation and Testing</option>
    <option value="Deployment">Deployment</option>
    
  </select>
  
                  </th>
                  <th class="cell100 column2"><input type="date" name="date1"></th>
                  
 
                </tr>
              </thead>
            </table>
          </div>

     


<br>
</div>

<div class="table100 ver1 m-b-110">
          <div class="table100-head">
            <table>
              <thead>
                <tr class="row100 head">
                 <th class="cell100 column2">Batch</th>
									<th class="cell100 column1">Activity</th>
								
									<th class="cell100 column4">Date</th>
									
 
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
								String batch="";
								java.sql.Date date;
								String activity="";
								Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MiniProject","sanket","pict123");
								Statement st=con.createStatement();
								Statement st1=con.createStatement();
								int flag=0;
								ResultSet rs=st.executeQuery("select Batch,Activity,SubmissionDate from Schedule  ");
								while(rs.next())
								{
										batch=rs.getString(1);
										activity=rs.getString(2);
										 date=rs.getDate(3);
									
								%>
									<td class="cell100 column2"><%=batch%> 
									</td>
									<td class="cell100 column1"><%=activity%> </td>
									<td class="cell100 column4"><%=date%> </td>
									
									</tr>
								<%
								
								}
								
								
								con.close();
								%>

							
							
							</tbody>
						</table>

          </div>
          <br><br>


<div align="center">
<button type="submit" class="button" >Save</button><br><br>
</div>
  </div>

</form>
</div>
</div>
      
<script>
var x, i, j, selElmnt, a, b, c;
/*look for any elements with the class "custom-select":*/
x = document.getElementsByClassName("custom-select");
for (i = 0; i < x.length; i++) {
  selElmnt = x[i].getElementsByTagName("select")[0];
  /*for each element, create a new DIV that will act as the selected item:*/
  a = document.createElement("DIV");
  a.setAttribute("class", "select-selected");
  a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
  x[i].appendChild(a);
  /*for each element, create a new DIV that will contain the option list:*/
  b = document.createElement("DIV");
  b.setAttribute("class", "select-items select-hide");
  for (j = 1; j < selElmnt.length; j++) {
    /*for each option in the original select element,
    create a new DIV that will act as an option item:*/
    c = document.createElement("DIV");
    c.innerHTML = selElmnt.options[j].innerHTML;
    c.addEventListener("click", function(e) {
        /*when an item is clicked, update the original select box,
        and the selected item:*/
        var y, i, k, s, h;
        s = this.parentNode.parentNode.getElementsByTagName("select")[0];
        h = this.parentNode.previousSibling;
        for (i = 0; i < s.length; i++) {
          if (s.options[i].innerHTML == this.innerHTML) {
            s.selectedIndex = i;
            h.innerHTML = this.innerHTML;
            y = this.parentNode.getElementsByClassName("same-as-selected");
            for (k = 0; k < y.length; k++) {
              y[k].removeAttribute("class");
            }
            this.setAttribute("class", "same-as-selected");
            break;
          }
        }
        h.click();
    });
    b.appendChild(c);
  }
  x[i].appendChild(b);
  a.addEventListener("click", function(e) {
      /*when the select box is clicked, close any other select boxes,
      and open/close the current select box:*/
      e.stopPropagation();
      closeAllSelect(this);
      this.nextSibling.classList.toggle("select-hide");
      this.classList.toggle("select-arrow-active");
    });
}
function closeAllSelect(elmnt) {
  /*a function that will close all select boxes in the document,
  except the current select box:*/
  var x, y, i, arrNo = [];
  x = document.getElementsByClassName("select-items");
  y = document.getElementsByClassName("select-selected");
  for (i = 0; i < y.length; i++) {
    if (elmnt == y[i]) {
      arrNo.push(i)
    } else {
      y[i].classList.remove("select-arrow-active");
    }
  }
  for (i = 0; i < x.length; i++) {
    if (arrNo.indexOf(i)) {
      x[i].classList.add("select-hide");
    }
  }
}
/*if the user clicks anywhere outside the select box,
then close all select boxes:*/
document.addEventListener("click", closeAllSelect);
</script>




        
</body>
</html>