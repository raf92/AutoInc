<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


  
<html> 
<head> 
<title>result:</title> 
<%@ page import="java.io.*"%> 
<%@ page import="java.io.File"%> 
<%@ page import="java.util.*"%> 
<%@ page import="java.sql.*"%> 
<%@ page import="java.sql.Blob"%> 
<%@ page import="java.sql.PreparedStatement"%> 
<%@ page import="java.sql.BatchUpdateException"%> 
<%@ page import="javax.servlet.*"%> 
<%@ page import="javax.servlet.http.*"%> 
<% 
try 
{ 
boolean autho;
//String driver = "org.gjt.mm.mysql.Driver"; 
//Class.forName("com.mysql.jdbc.Driver").newInstance(); 
//Connection con = null; 
//ResultSet rs=null; 
Statement stmt=null; 
Class.forName("com.mysql.jdbc.Driver");

Connection c = DriverManager.getConnection("jdbc:mysql://localhost/raf","root", "root");
Statement s =c.createStatement();

ResultSet rs ; //=s.executeQuery(sql);

//s=c.createStatement(rs.TYPE_SCROLL_SENSITIVE,rs.CONCUR_UPDATABLE);
String name=request.getParameter("username");
String name1=request.getParameter("phone");

rs = s.executeQuery("SELECT * FROM user1 WHERE username='"+name+"'");//use of where
if(!rs.next()) 
{
autho=false;

}
else
{
autho=true;
}
rs = s.executeQuery("SELECT * FROM user1 WHERE phone='"+name1+"'");
if(!rs.next()) 
{
out.println("not autorized");
}
else if(autho==false) 
{
out.println("not autorized");
}
else
{
out.println("autorized");
out.println("<h1>new mail from   "+name1+"   to   "+name+"</h1>"); 
}

rs.close();
}
catch (Exception e) 
{ 
out.println("no3");
out.println("the error is:"+e.toString()); 
} 
%> 
</body> 
</html>