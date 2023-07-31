<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.* , javax.servlet.*, java.util.*" %>
      <%@ page session="false" %>
      

<!DOCTYPE html>
<html lang="en">
<SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Project Management System</title>

  <!-- Font Awesome Icons -->
  <link href="all.min.css" rel="stylesheet" type="text/css">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet">
  <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>

  <!-- Plug in CSS -->
  <link href="magnific-popup.css" rel="stylesheet">

  <!-- Theme CSS - Includes Bootstrap -->
  <link href="creative.min.css" rel="stylesheet">
<style>
			.dropbtn {
			  background-color: #4CAF50;
			  color: white;
			  padding: 16px;
			  font-size: 16px;
			  border: 1px;
			  border-radius: 25px;
			}

			.dropdown {
			  position: relative;
			  display: inline-block;
			  border-radius: 25px;
			}

			.dropdown-content {
			  display: none;
			  position: absolute;
			  background-color: #f1f1f1;
			  min-width: 170px;
			  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
			  z-index: 1;
			  border-radius: 25px;
			}

			.dropdown-content a {
			  color: black;
			  padding: 12px 16px;
			  text-decoration: none;
			  display: block;
			  border-radius: 25px;
			}

			.dropdown-content a:hover {background-color: #ddd;}

			.dropdown:hover .dropdown-content {display: block;}

			.dropdown:hover .dropbtn {background-color: #3e8e41;}
			</style>

</head>

<body id="page-top" onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">>


  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="createhtml.jsp">Create Group</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto my-2 my-lg-0">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="LoginStudent.jsp">Group Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="LoginGuide.jsp">Guide Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="Logincoordinator.jsp">Co-Ordinator Login</a>
          </li>
          <li class="nav-item"> 
            <a class="nav-link js-scroll-trigger" href="#about">About</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Masthead -->
  <header class="masthead">
    <div class="container h-100">
      <div class="row h-100 align-items-center justify-content-center text-center">
        <div class="col-lg-10 align-self-end">
          <h1 class="text-uppercase text-white font-weight-bold">Project Management System</h1>
          <hr class="divider my-4">
        </div>
        <div class="col-lg-8 align-self-baseline">
          <p class="text-white-75 font-weight-light mb-5">Project Management System for Mini Project will keep track on Project Progress</p>
          
			  <div class="dropdown">
			  <a class="btn btn-primary btn-xl js-scroll-trigger">Register As...</a>
			
			  <div class="dropdown-content">

				<a href="StudentReg.jsp">Student</a>
				<a href="GuideReghtml.jsp">Guide</a>
				<a href="CoordinatorReg.jsp">Co-Ordinator</a>
			  </div>
			</div>
          
        </div>
      </div>
    </div>
       
  </header>


  <!-- Contact Section -->
  <section class="page-section" id="about">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-8 text-center">
          <h2 class="mt-0">About us</h2>
          <hr class="divider my-4">
        </div>
      </div>
      <div class="row">
        
       
      </div>
    </div>
  </section>

  <!-- Footer -->
  <footer class="bg-light py-5">
    <div class="container">
      <div class="small text-center text-muted">Copyright &copy; 2019 </div>
    </div>
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="jquery.min.js"></script>
  <script src="bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="jquery.easing.min.js"></script>
  <script src="jquery.magnific-popup.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="creative.min.js"></script>

</body>

</html>
    