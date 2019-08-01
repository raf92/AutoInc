<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
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
function chk_onclick()
{
	var myform=document.pform;
	if(myform.username.value=="" || myform.passwd.value=="")
	{
		alert("PLEASE COMPLETE ALL THE SPECIFICATION");
		if(myform.username.value=="")
		{
			myform.username.focus();
		}
		else
		{
			myform.passwd.focus();
		}
	}
	
}
</script>
</head>

<body>

<div id="top_links">
  

<div id="header">
	<tr><td bgcolor="white" style="padding:5"><br>

<form method="post"  name=pform>

<center><table>
<tr><td><font face="verdana,arial" size=-1>EMPLOYE NAME:</td><td>
<input type="text" name="username"></td></tr>
<tr><td><font face="verdana,arial" size=-1>PASSWORD:</td><td>
<input type="password" name="passwd"></td></tr>
<tr><td><font face="verdana,arial" size=-1>&nbsp;
</td><td><font face="verdana,arial" size=-1>
<input type="submit" value="SUBMIT" name=chkform onclick="chk_onclick()"></td></tr>
<tr><td colspan=2><font face="verdana,arial" size=-1>&nbsp;</td></tr>


<td align="right" valign="bottom"><img src="1.gif"   width="5" height="5" ></td>
</table></center>
</form>
<form  name="form1" action="index.html" method="post">
<input maxlength="255" size="30" value="HOME" type="submit"  >
</form>
</td></tr></table></td></tr></table>

<%
String k1=request.getParameter("username");
session.setAttribute("username",k1);
if(k1!=null){
try{
	
	String k2 =request.getParameter("passwd");
	 Class.forName("com.mysql.jdbc.Driver");
	
	Connection c = DriverManager.getConnection("jdbc:mysql://localhost/raf","root", "root");
	Statement s =c.createStatement();
	String sql = "select * from emp where empname='"+k1+"'and password='"+k2+"'";
	ResultSet rs=s.executeQuery(sql);
	rs.next();
	String pass=rs.getString(2);
	
	if(k2.equals(pass))
	{
		out.println("welcome" + k1);
		 %>
		  <jsp:forward page="login_emp1.jsp" />
	<%}
	else
	{
	 %><script type="text/javascript" language="javascript">
		  alert("Your ID and Password do not match.Enter a valid Login Id and Password.");
		  </script>
	 <%}
	
	}catch(Exception e) 
	{
	%><script type="text/javascript" language="javascript">
			alert("Your EMPLOYEE ID and Password do not match ");
			</script>
	<%}
}
%>

</div>


<div id="navigation">
    <ul>
    <li><a href="#">OFFER</a></li>
    <li><a href="#">CLAIM</a></li>
    <li><a href="#">POLICY</a></li>
    <li><a href="#">DISCOUNT</a></li>
    <li><a href="#">PAYMENT</a></li>
    <li><a href="#">FINANCE</a></li>
    <li><a href="about.jsp">ABOUT US</a></li>
    </ul>
</div>

<table cellpadding="0" cellspacing="0" id="content1"><tr align="justify">
	<td class="con" valign="top">
    	<div id="heade1"><h1>E-Insurance</h1></div>
        <p>To help individuals limit financial loss when an auto accident occurs
When people buy auto insurance, they transfer part of the financial risk to the insurance company
        
        

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
        <h2>July 31, 2019</h2>
        <p>Get your dream car with no worry for any damage.</p><br>
        <div class="img"><img src="images/globe_16.gif" alt="Business"></div>
        <h2>July 31, 2019</h2>
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
	  
  Copyright © Auto Insurance 2019</div>
</div>

<script type="text/javascript">
document.onload = ctck();
</script>
</div>

</body>
</html>
