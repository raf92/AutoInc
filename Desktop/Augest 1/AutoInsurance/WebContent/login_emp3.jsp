
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Auto insurance</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");

}
</script>
<script type="text/javascript">
	window.history.forward();
	function.noBack();
	{
		window.history.forward();
	}
</script>
</head>

<body>

<div id="top_links">
  

<div id="header">
	
<BODY BGCOLOR="#4EE2EC" >

<form name="form1" action="index.html" method="post">
<input type="submit" value="LOGOUT" align="right">
</form>



<form NAME="CREATEACCTFORM" action="login_user3.jsp"  METHOD="POST" >
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
	

	

	<table width="100%" border="0" cellpadding="7" cellspacing="0" class="bg_white">

	
	  
<tr>
				<td width="400" align="right" bgcolor="#736AFF">Auto Insurance</td>
				
			</tr>

			   <tr>
				
					
			            <table border="0" align="center" cellpadding="0" cellspacing="0">
            			<tr>
            			
           				 <span id="email_msg">

           				 </span>
           				
           				 </tr>


</form>
           				 </table>
           				 <h2>

        				
<p>WELCOME, <%=session.getAttribute("username")%></p></h2>
		

		 	<div id="UNAME" style="width:250px; margin-left:205px; margin-top:-20px; _margin-left:20px; _margin-top:0px; position:absolute;"></div>

					<div id="ERR_UNAME" style="padding: 2px; width: 400px; display: none;" class="txt_red small_1"></div>
				</td>

			  </tr>
			 
		<table width="100%" border="1" cellpadding="7" cellspacing="0" class="bg_white">
		
  <tr>
    <th  bgcolor="#5D7B9D"><font color="#fff">USER NAME</font></th>
    <th bgcolor="#5D7B9D"><font color="#fff">COVERAGE</font></th>
    <th bgcolor="#5D7B9D"><font color="#fff">CAR NUMBER</font></th>
    <th bgcolor="#5D7B9D"><font color="#fff"></font>EXPIRE DATE</th>
    <th bgcolor="#5D7B9D"><font color="#fff">MODEL</font></th>
    <th bgcolor="#5D7B9D"><font color="#fff">COLOR</font></th>
    <th bgcolor="#5D7B9D"><font color="#fff">PH.NUMBER</font></th>
  </tr>
  <tr>
    <td bgcolor="#5D7B9D"><font color="#fff"><%=session.getAttribute("username")%></td>
     <td bgcolor="#5D7B9D"><font color="#fff"><%=session.getAttribute("passw")%></td>
      <td bgcolor="#5D7B9D"><font color="#fff"><%=session.getAttribute("model")%></td>
       <td bgcolor="#5D7B9D"><font color="#fff"><%=session.getAttribute("username")%></td>
        <td bgcolor="#5D7B9D"><font color="#fff"><%=session.getAttribute("username")%></td>
         <td bgcolor="#5D7B9D"><font color="#fff"><%=session.getAttribute("username")%></td>
          <td bgcolor="#5D7B9D"><font color="#fff"><%=session.getAttribute("username")%></td>
    
  </tr>
</table>
 
</div>

<div id="navigation">
    <ul>
    <li><a href="#">OFFER</a></li>
    <li><a href="#">TRACE</a></li>
    <li><a href="#">POLICY</a></li>
    <li><a href="#">DISCOUNT</a></li>
    <li><a href="#">PAYMENT</a></li>
    <li><a href="#">CLAIM</a></li>
    <li><a href="#">FINANCE</a></li>
    </ul>
</div>

<table cellpadding="0" cellspacing="0" id="content1"><tr align="justify">
	<td class="con" valign="top">
    	<div id="heade1"><h1>E insurance</h1></div>
        <p>To help individuals limit financial loss when an auto accident occurs
When people buy auto insurance, they  transfer part of the financial risk to the insurance company
        
        

</p>
    </td>
    
    <td class="con" valign="top">
    	<div id="heade2"><h1>Opportunities</h1></div>
        <p>
        Covers injuries or damage caused to other people or their property
       Two types of liability occur from owning and operating a vehicle:

Bodily Injury – driver or car owner is held legally responsible for injuries suffered by another person
Property Damage – driver or car owner is held legally responsible for damaging another’s property
         

</p>
    </td>
    
    <td class="con" valign="top">
    	<div id="heade3"><h1>Coverage</h1></div>
        <p>
        Comprehensive Coverage – includes all physical damage losses except collision and other specified losses.  Usually includes deductible.  Losses covered include:
Theft, vandalism
Fire, ice, windstorm, or hail
Glass breakage
Contact with animal
        
    </td>
</tr></table>

<table style="width:897px; background:#FFFFFF; margin:0 auto;"><tr align="justify">
	<td width="299" valign="top" style="border-right:#666666 1px dotted;">
    	<div id="services"><h1>Services</h1><br>
		    <ul>
        	<li><a href="#">www.autoinsurance.com</a></li>
            <li><a href="#">www.homeinsurance.com </a></li>
            <li><a href="#">www.rentacar.com/forum.jsp</a></li>
            </ul>
			
       </div>
	</td>
    
    <td width="299" valign="top">
    	<div id="welcome" style="border-right:#666666 1px dotted;"><h1>Welcome</h1><br>
    	    <center><img src="images/globe_10.gif" alt="business" width="196" height="106"></center><br>
		    <p>Featuring a flexible Report Center that offers hundreds of precise reports in several languages, insurance company Back-Office tracks accident, claims, cars and payment electronic funds transfer in real-time. Insurance company provides a relevant picture of your daily operations
		    .</p>
	    	
	    </div>      
    </td>
    
    <td width="299" valign="top">
   	  <div id="news"><h1>News &amp; Events</h1><br>
      	<div class="img"><img src="images/globe_12.gif" alt="Business"></div>
        <h2>Dec. 5, 2016</h2>
        <p>Get your dream car with no worry for any damage.</p><br>
        <div class="img"><img src="images/globe_16.gif" alt="Business"></div>
        <h2>Dec. 5, 2016.</h2>
        <p>Get your dream dream car with no worry for any damage.</p>
      
      </div>
        	
     </td>
</tr></table>

<div id="footer_top">
  <div id="footer_navigation">
  

  </div>
  
  <div id="footer_copyright" >
 
    	    <center><img  alt="business"  width="196" height="106"></center><br>
		    <p>Auto Insurance inc.</p>
	  
  Copyright © Auto Insurance 2016</div>
</div>

<script type="text/javascript">
document.onload = ctck();
</script>
</div>

</body>
</html>