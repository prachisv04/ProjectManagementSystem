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
    <!-- Title Page-->
    <title> Register Forms</title>

    <!-- Icons font CSS-->
    <link href="material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="select2.min.css" rel="stylesheet" media="all">
    <link href="daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link rel="icon" type="image/png" href="favicon.ico"/>
    <link href="main.css" rel="stylesheet" media="all">
     <link href="util.css" rel="stylesheet" media="all">
       <link href="signup.css" rel="stylesheet" media="all">
</head>

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
		</script>
		

	
<body onload="check();">
   <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(bg-01.jpg);">
					<span class="login100-form-title-1">
						Student Registration Form				
					</span>
				</div>
                      <form class="login100-form validate-form" action="StudentRegister.jsp">
                      
                                <div class="wrap-input100 validate-input m-b-26" data-validate="name is required">
								<span class="label-input100">Name:</span>
                                    <input class="input100" type="text" name="name" required  id="name" onkeyup="validatename();" placeholder="Enter Name">
                                	<span class="focus-input100"></span>
                                </div>
                            
                               <div>
                       <div ><p class="error" id="error1"></p></div>
                  		</div>
                       
                     
                     
                               <div class="wrap-input100 validate-input m-b-26" data-validate="name is required">
								<span class="label-input100">MIS ID:</span>
                                    <input class="input100" type="text" name="misid" required id="misid"  onkeyup="valmis();"  placeholder="Enter MIS ID">
                                <span class="focus-input100"></span>
                                </div>
						
							   <div>
                       <div><p  class="error" id="error2"></p></div>
                  		</div>                        
                           
                                <div class="wrap-input100 validate-input m-b-26" data-validate="name is required">
						<span class="label-input100">Roll no:</span>
                                    <input class="input100" type="text"  name="roll" required placeholder="Enter Roll number" maxlength="5">
                              <span class="focus-input100"></span>
                                </div>
                       

                          
                           
                               <div class="wrap-input100 validate-input m-b-26" data-validate="name is required">
						<span class="label-input100">Class:</span>
                                    <input class="input100" type="text" name="class" required id="cls" onblur="validateclass();" placeholder="Class">
                                <span class="focus-input100"></span>
                                </div>
                          
                           
                                <div class="wrap-input100 validate-input m-b-26" data-validate="name is required">
						<span class="label-input100">Batch:</span>
                                    <input class="input100" type="text" name="batch" required placeholder="Batch">
                              <span class="focus-input100"></span>
                            </div>
                       
                                <div class="wrap-input100 validate-input m-b-26" data-validate="name is required">
						<span class="label-input100">Email:</span>
                                    <input class="input100" type="email" name="email"  placeholder="Email Address">
                           		<span class="focus-input100"></span>
                           		</div>
                            
                                <div class="wrap-input100 validate-input m-b-26" data-validate="name is required">
						<span class="label-input100">Phone Number:</span>
                                    <input class="input100" type="text" name="phone" required id="mob" onkeyup="validatenum();" placeholder="Phone Number">
                                <span class="focus-input100"></span>
                                </div>
                          
                      <div>
                       <div ><p class="error" id="error3"></p></div>
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
  

   <script src="jquery.min.js"></script>
    <!-- Vendor JS-->
     <script src="select2.min.js"></script>
    <script src="moment.min.js"></script>
    <script src="daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="global.js"></script>
   
</body>

</html>
