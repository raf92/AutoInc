<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
  <title>Auto Insurance</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>
</head>
<body>


  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-3 sidenav">
    <h2>Services</h2><br>
		   
      <p><a href="#">www.autoinsurance.com</a></p>
      <p><a href="#">www.homeinsurance.com </a></p>
      <p><a href="#">www.rentacar.com/forum.jsp</a></p>
      <a href="index.html" class="btn btn-info" role="button">HOME</a>
    </div>
    <div class="col-sm-6 text-left"> 
      <h1 class="text-info">AUTO INSURANCE</h1><br>
      <h2>CONTACT US</h2><br>
    	<H3>Egiant Technologies</H3>
    	 <H3>8033 University Blvd Suite A, </H3>
    	 <H3>Clive IA 50325</H3>
    	 <H3>515-309-1451</H3>
      <hr>
     
    </div>
    <div class="col-sm-3 sidenav">
      <div class="well">
        <img src="images/globe_102.jpg" alt="Business">
    	<p>Get your dream car with no worry for any damage.</p>
      </div>
      <div class="well">
        <img src="images/globe_16.gif" alt="Business"></div>
        
        <p>Get your dream dream car with no worry for any damage.</p>
      </div>
    </div>
  </div>
</div>

<footer class="container-fluid text-center">
   <p> Auto Insurance inc</p>
	  
  <p>Copyright ©Auto insurance 2019</p>
</footer>

</body>
</html>