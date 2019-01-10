

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>:: Result ::</title>

<head>
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
  
    <li ><a href="../html/boh.html" class="c">Facilities</a></li>
    <li><a href="../html/download.html" class="d">Downloads</a></li>
    <li><a href="../html/gallery.html" class="e">Gallery</a></li>
    <li><a href="../html/login.html" class="f">Login</a></li>
    <li><a href="../html/contact.html" class="g">Contact Us</a></li>
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
<div class="col-md-11 col-md-push-1">


<ol class="breadcrumb" >
   <li>You are here</li>
  <li><a href="../index.html">Login</a></li>

  <li class="active">Result</li>
</ol>
</div>


 <div class="container">
                  
                          
<div class="col md-13">
<div class="col-md-3 ">
   <div class="panel panel-success">
      <div class="panel panel-heading">
         <h3 class="panel-title" id="panelhdr">Navigation</h3>
      </div>
      <div class="panel-body">
     
 
  <ul class="nav nav-tabs-justified">
     <li><a href="../jsp/Teacher_home.jsp" class="c">Teacher Home</a></li>
    <li><a href="Attendance_Ajax.html" class="c">View Attendance</a></li>
    <li><a href="Attendance_Ajax.html" class="d">View Marks</a></li>
    <li><a href="../jsp/Update_teacher_data.jsp" class="e">Update Teachers Profile</a></li>
    <li><a href="../jsp/Update_stud_data.jsp" class="f">Update Students Profile</a></li>
        
    </ul><!--nav-nav-tabs-->
  


</div><!--Panel-body ends -->
</div><!--panel-success ends -->
</div><!-- col-md-3 ends -->






   <div class="col-md-7 ">
   <div class="panel panel-info">
      <div class="panel panel-heading">
         <h3 class="panel-title">Result</h3>
      </div>
      <div class="panel-body">
                                    <div id="reg">
                                    
													                            <%@page import="java.sql.*"%>
													</head><form name="frm" method="post" action="result_final.jsp">
													<%
													try{
													String std=request.getParameter("std");
													String div=request.getParameter("div");
													String subject=request.getParameter("sub_select");
													String type=request.getParameter("type");
													String[] sid=new String[20];
													out.print(type);	
													Connection con;
														Statement st;	
													ResultSet rs,rs1;
													Class.forName("com.mysql.jdbc.Driver");
													con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student vigilience system?user=root&password=manager");
													st=con.createStatement();
													int i=0;
													rs=st.executeQuery("select SID from stud_personal_db where STD='"+std+"' and DIVISION='"+div+"';");
													%>
													<table border="1">
													<tr>
													<th>Student ID</th>
													<th>marks</th></tr>
														<% 								
													while(rs.next())
													{
													%>	<tr>
														<td> 

													<% 
													sid[i]=rs.getString("SID");
													%>
													<%=sid[i] %></td><td><input type="text" name="r<%=i%>"><input type="hidden" value="<%=sid[i]%>" name="s<%=i%>">
													</td></tr>
													<%
													i++;
													}
													%></table>
													<input type="hidden" name="count" value="<%=i%>" >
													<input type="hidden" name="subject" value="<%=subject%>" >
													<input type="hidden" name="type1" value="<%=type%>">
													<input type="submit" value="submit">
													</form>
													<%									
													}
													catch(Exception e)
													{
													e.printStackTrace();
													out.println("error"+e);
													}
													%>

                  </div><!-- reg ends -->  
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
