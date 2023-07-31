<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Register Forms </title>

	<title>Login V15</title>
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
	<link rel="stylesheet" type="text/css" href="main.css">
<!--===============================================================================================-->

    <!-- Icons font CSS-->
    <link href="material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="select2.min.css" rel="stylesheet" media="all">
    <link href="daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="signup.css" rel="stylesheet" media="all">
</head>
<script type="text/javascript">
	
	

	
	
</script>
<body onload="check();">

		<script>
		function check()
		{
			Flag=0;
		var Flag = '<%=request.getAttribute("flag")%>';
		
			if(Flag==1)
				{
				document.getElementById("error2").innerHTML="MIS-ID exists try again";
				}
			
			else
				document.getElementById("error2").innerHTML=" ";
				
		}
		function validate(){
			
			var pass = document.getElementById("pass").value;
			var cpass = document.getElementById("cpass").value;
			
			if(pass != cpass){
				document.getElementById("error3").innerHTML = "Password mismatch";
			
				return false;
			}
			return true;
		}
		
		</script>
<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(bg-01.jpg);">
					<span class="login100-form-title-1">
						co_ordinator Registration Form				
					</span>
				</div>
			
    
                   <form class="login100-form validate-form" action="CoordinatorRegister.jsp">     
             			
					<div class="wrap-input100 validate-input m-b-26" data-validate="name is required">
						<span class="label-input100">Name:</span>
						<input class="input100" type="text" name="name" id="name" placeholder="Enter name" required onkeyup="validatename();" autocomplete="off">
						<span class="focus-input100"></span>
					</div>
					
					<div>
					<p class="error" id="error1" ></p>
					</div>
					
					<div class="wrap-input100 validate-input m-b-18" data-validate = "mis id is required">
						<span class="label-input100">MIS ID:</span>
						<input class="input100" type="text" name="misid" id="misid" required placeholder="Enter ID" maxlength="12" onkeyup="valmis();">
						<span class="focus-input100"></span>
					</div>
					<div>
					<p class="error" id="error2" ></p>
					</div>

                           
                          
                       				<div class="wrap-input100 validate-input m-b-18" data-validate = "email id is required">
						    <span class="label-input100">Email ID:</span>
                                    <input class="input100" type="email" name="email" required autocomplete="off" placeholder="Email">
                                    <span class="focus-input100"></span>
                                </div>
                          
                            
                               
                       				<div class="wrap-input100 validate-input m-b-18" data-validate = "mobile number is required">
						    <span class="label-input100">MOBILE NUMBER:</span>
                                    <input class="input100" type="text" name="mob" id="mob" required onkeyup="validatenum();" autocomplete="off" placeholder="Mobile No">
                               <span class="focus-input100"></span>
                                </div>
                           
                        
                                <div class="wrap-input100 validate-input m-b-18" data-validate = "mobile number is required">
						    <span class="label-input100">Create Password:</span>
                                    <input class="input100" type="Password" id="pass" name="pass" required placeholder="Type  Password">
                              <span class="focus-input100"></span>
                                </div>
                         
                           
                                <div class="wrap-input100 validate-input m-b-18" data-validate = "mobile number is required">
						    <span class="label-input100">Confirm Password:</span>
                                    <input class="input100" type="password" id="cpass" required name="confirm" placeholder="Re-enter Password">
                                <span class="focus-input100"></span>
							</div>
                        
                       <div>
					<p class="error" id="error3" ></p>
					</div>
                 <br>
                 <br>
                 <br>
                        <div class="p-t-15">
                            <input class="btn btn--radius-2 btn--blue" onclick="return validate()" type="submit" value="submit" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    
    <!-- Jquery JS-->
     <script src="jquery.min.js"></script>
    <!-- Vendor JS-->
     <script src="select2.min.js"></script>
    <script src="moment.min.js"></script>
    <script src="daterangepicker.js"></script>

    <!-- Main JS-->
     <script src="global.js"></script>
 
</body>

</html>
    