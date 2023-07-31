<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Contact V15</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="util.css">
	<link rel="stylesheet" type="text/css" href="create.css">
	<link rel="stylesheet" type="text/css" href="main.css">
<!--===============================================================================================-->
</head>
<script>
function check()
{
	var f= <%=request.getAttribute("flag")%>
	var stud=<%=request.getAttribute("studnum") %>
	var student=<%= request.getAttribute("student") %>
	if(f==1)
		{
		if(stud==1)
			document.getElementById("error1").innerHTML="Invalid MIS ID for student 1 ";
		else if(stud==2)
			document.getElementById("error1").innerHTML="Invalid MIS ID for student 2";
		else if(stud==3)
			document.getElementById("error1").innerHTML="Invalid MIS ID for student 3";
		else if(stud==4)
			document.getElementById("error1").innerHTML="Invalid MIS ID for student 4 ";
		else if(student==1)
			document.getElementById("error1").innerHTML=" Student 1 is already enrolled in another group";
		else if(student==2)
			document.getElementById("error1").innerHTML=" Student 2 is already enrolled in another group";
		else if(student==3)
			document.getElementById("error1").innerHTML=" Student 3 is already enrolled in another group";
		else if(student==4)
			document.getElementById("error1").innerHTML=" Student 4 is already enrolled in another group";
		else 
			document.getElementById("error1").innerHTML="  ";
		}
	if(flag==2)
		{
		document.getElementById("error2").innerHTML="Password mismatch! ";
		}
}
function validatestud()
{
	if(document.getElementById("stud1").value.length > 0)
		document.getElementById("error1").innerHTML=" ";
	
}
</script>
<body onload="check();">


	<div class="container-contact100">
		

		<div class="wrap-contact100">
			<div class="contact100-form-title" style="background-image: url(bg-01.jpg);">
				<span class="contact100-form-title-1">
					Create Group
				</span>

				
			</div>

			<form class="contact100-form validate-form" action="create.jsp">
				<div class="wrap-input100 validate-input" data-validate="ID is required">
					<span class="label-input100">ID:</span>
					<input class="input100" type="text" name="id" placeholder="Auto Genrate" disabled value="*****" >
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "topic of project">
					<span class="label-input100">Topic:</span>
					<input class="input100" type="text" name="topic" placeholder="Enter topic">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Total no of Student">
					<span class="label-input100">No of student:</span>
					<input class="input100" type="number" name="no" placeholder="No of Student" min="2" max="4">
					<span class="focus-input100"></span>
				</div>
			
			
				<div class="wrap-input100 ">
					<span class="label-input100">MIS ID:</span>
					<input class="input100" type="text" name="stud1" id="stud1" placeholder="student 1">
					<span class="focus-input100"></span>
					<input class="input100" type="text" name="stud2" id="stud1" placeholder="student 2">
					<span class="focus-input100"></span>
					<input class="input100" type="text" name="stud3" id="stud1" placeholder="student 3">
					<span class="focus-input100"></span>
					<input class="input100" type="text" name="stud4" id="stud1" placeholder="student 4">
					<span class="focus-input100"></span>
				</div>
				<div><p class="error" id="error1"></p></div>
				<div class="wrap-input100 validate-input" data-validate="Enter valid Password">
					<span class="label-input100">Create Password:</span>
					<input class="input100" type="Password" name="pass" id="pass" placeholder="Password">
					<span class="focus-input100"></span>
				</div>


				<div class="wrap-input100 validate-input" data-validate="Enter valid Password">
					<span class="label-input100">Re-Enter Password:</span>
					<input class="input100" type="Password" name="repass" id="repass" placeholder="Re-Enter">
					<span class="focus-input100"></span>
				</div>
<div><p class="error" id="error2"></p></div>
				<div class="container-contact100-form-btn">
					<button class="contact100-form-btn">
						<span>
							Submit
							
						</span>
					</button>
				</div>
			</form>
		</div>
	</div>



	<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
	<script src="jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="popper.js"></script>
	<script src="bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="select2.min.js"></script>
<!--===============================================================================================-->
	<script src="moment.min.js"></script>
	<script src="daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKFWBqlKAGCeS1rMVoaNlwyayu0e0YRes"></script>
	<script src="js/map-custom.js"></script>
<!--===============================================================================================-->
	<script src="main.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
	</script>

</body>
</html>
