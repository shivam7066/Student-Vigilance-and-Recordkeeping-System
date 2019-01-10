

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>:: Student Attendance ::</title>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="ISO-8859-1">
    <link href="../css/bootstrap.css" rel="stylesheet">
      <link href="../css/main.css" rel="stylesheet">

<script src="../js/jquery.js" ></script>
<script src="../js/bootstrap.min.js" ></script>
</head>




<body>

<!-- navigation Starts -->

  <nav class="navbar navbar-default" id="hdr" role="navigation">
    <div class="container-fluid">
          
          <div class="col-md-13">      
    <div class="col-md-8 "><img class="img-responsive" src="../img/header.png"></div>

        <div class="col-md-3">  
              <form class="bs-example bs-example-form" role="form" action="#.html">
                 <div class="input-group input-group-lg ">
                     <span class="input-group-addon"><img src="../img/png/glyphicons-28-search.png"></span>
                       <input type="text" class="form-control" placeholder="Search Anything">
                  </div>

              </form>
        </div>

  </div><!-- col-md-12-->





 <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
 
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" id="bcol">

              <span class="sr-only"><h6>Show Navigation</h6>Navigation</span>

              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>

            </button>
  
 <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
  <div id="nav">
 
  <ul class="nav nav-tabs">
    
    <li ><a href="../index.html" class="a" aria-hidden="true">Home</a></li>
  
    <li class="active"><a href="boh.html" class="c">Board of Honours</a></li>
    <li><a href="download.html" class="d">Downloads</a></li>
    <li><a href="gallery.html" class="e">Gallery</a></li>
    <li><a href="login.html" class="f">Vault</a></li>
    <li><a href="contact.html" class="g">Contact Us</a></li>
        <li class="dropdown">
         <a class="dropdown-toggle" data-toggle="dropdown" href="#">
         Alumni <span class="caret"></span>
          <ul class="dropdown-menu">
                     <li><a href="#">Passouts</a></li>
                     <li><a href="#">Interact with Seniors</a></li>
                     <li><a href="#">Sponosrships</a></li>
                    
        
          </ul>
    </ul><!--nav-nav-tabs-->
  </div><!--nav-->
      </div><!--navbar-header-->
      </div>
    </nav>
<!-- navigation Ends -->
</div><!-- /.navbar-collapse -->

<ol class="breadcrumb" >
   <li>You are here</li>
  <li><a href="../index.html">Home</a></li>

  <li class="active">Board of Honours</li>
</ol>
<div class="container">
                  
                          
<div class="col md-13">
<div class="col-md-3 ">
   <div class="panel panel-success">
      <div class="panel panel-heading">
         <h3 class="panel-title">Navigation</h3>
      </div>
      <div class="panel-body">
     
 
  <ul class="nav nav-tabs-justified">
   <li><a href="../jsp/Teacher_home.jsp" class="c">Teacher Home</a></li>
    <li><a href="html/boh.html" class="c">View Attendance</a></li>
    <li><a href="html/download.html" class="d">View Marks</a></li>
    <li><a href="html/gallery.html" class="e">Update Your Profile</a></li>
    <li><a href="html/login.html" class="f">Study Videos</a></li>
    
        
    </ul><!--nav-nav-tabs-->
  


</div><!--Panel-body ends -->
</div><!--panel-success ends -->
</div><!-- col-md-3 ends -->






   <div class="col-md-7 ">
   <div class="panel panel-info">
      <div class="panel panel-heading">
         <h3 class="panel-title">Student Home</h3>
      </div>
      <div class="panel-body">
                          <form name="attendance" method="post" action="attendance1.jsp" >



welcome  <%  //=rs.getString("SID") create session for teacher name from teacher personal info table%>

<br>
 <%String std= request.getParameter("sem_select");%>
class :  <%=std%>
<br>
<%String div= request.getParameter("dept_select");
String subject= request.getParameter("sub_select");
%>
Division : <%=div%>
<br>

select date: 
  <input type="date" name="date">
  <br>
  
<br>




<%
int i=0;
try{
Connection con;
Statement st;
ResultSet rs;

Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student vigilience system?user=root&password=manager");
st= con.createStatement();
rs=st.executeQuery("select * from stud_personal_db where std='"+std+"' and division='"+div+"'");
%>
<center>
<table border="1">
<tr>
	<td>ID</td>
	<td>Name</td>
	<td>Present</td>
	<td>Absent</td>
	</tr>
<% 
while(rs.next())
{
	//String i=rs.getString("SID");
	
	%>
	
	<tr>
	<td><%=rs.getString("SID")%></td>
	<td><%=rs.getString("FIRST_NAME")%></td>
	<td><input type="radio" name="att<%=i%>" value="1" checked="checked" autocomplete="off"></td>
	<td><input type="radio" name="att<%=i%>" value="0"  /></td>
	</tr>

<%
i++;	}
 %>

</table></center>

<% 
con.close();
}

catch(Exception e)
{
e.printStackTrace();
out.println("error"+e);

}
%>
<input type="hidden" name="count" value="<%=i%>">
<input type="hidden" name="std" value="<%=std%>">
<input type="hidden" name="div" value="<%=div%>">
<input type="hidden" name="subject" value="<%=subject%>">
<input type="submit" value="submit" class="button1"> 
</form>

        </div><!--panel body ends -->
    </div><!--panel success ends -->
    </div>  <!--col-md-7 ends -->
</div><!--col-md-13 ends -->
</div><!-- container ends -->





<!-- Footer StaRTS -->
<footer class="site-footer" >
    <div class="container">
               <div class="row">
                    <p> Welcome to Online Student Vigiliance System..</p>
                         <div class="bottom-footer">
                                  <div class="col md-7"> &copy Pathways World School</div>

                               <!--Social Starts HERE-->
                                  <div id="footer" class="center">
                                        <div id="f1">
                                                
                                        <br/>     
                                          <a href="#"><img src="../img/facebook.png"/></a>
                                          <a href="https://twitter.com/Triangle_Sales"><img src="../img/twitter.png"/></a>
                                          <a href="#"><img src="../img/google_plus.png"/></a>
                                                
                                        </div>
                                        
                                      </div>
                                  
                                 <!--Social ENDS HERE-->
    
                <div class="col md-7">
                      <ul class="footer-nav">
                          <li><a href="../index.html">Home</a></li>
                          <li><a href="login.html">LogIn</a></li>
                          <li><a href="developers.html">Developers</a></li>
                          <li><a href="gallery.html">Gallery</a></li>
                          <li><a href="contact.html">AboutUs</a></li>
                        </ul>
                </div>
    </div><!-- bOTTOM- FOOTER ENDS -->
</div><!-- row ENDS -->
</div><!-- CONTAINER ENDS -->
  </footer>

<!-- fOOTER eNDS -->



</body>
</html>







































