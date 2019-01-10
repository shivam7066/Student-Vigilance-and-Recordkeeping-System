<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<title>:: Subject Allocation Insertion::</title>

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
  
    <li ><a href="../html/boh.html" class="c">Board of Honours</a></li>
    <li><a href="../html/download.html" class="d">Downloads</a></li>
    <li><a href="../html/gallery.html" class="e">Gallery</a></li>
    <li><a href="../html/login.html" class="f">Vault</a></li>
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


<ol class="breadcrumb" >
   <li>You are here</li>
  <li><a href="../index.html">Home</a></li>

  <li class="active">Subject Allocation</li>
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
     <li><a href="../jsp/Admin_home.jsp" class="c">Admin Home</a></li>
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
         <h3 class="panel-title">Subject Allocation DB</h3>
      </div>
      <div class="panel-body">
                 <%
try
{
String[] sub_code=new String[10];
String[] sub_name=new String[10];
String[] dd=new String[10];
String[] teacher_name=new String[10];

int i;
int count=Integer.parseInt(request.getParameter("count"));
for(i=0;i<count;i++)
dd[i]=request.getParameter("teacher_select"+i);

String division= String.valueOf(session.getAttribute("division"));
String std= String.valueOf(session.getAttribute("std"));

Connection con;
Statement st;
ResultSet rs,rs1,rs3;

Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student vigilience system?user=root&password=manager");
i=0;
st=con.createStatement();
rs=st.executeQuery("select sub_code,sub_name from add_subject where std='"+std+"' and division='"+division+"';");
while(rs.next())
{
	sub_code[i]=rs.getString("sub_code");
	sub_name[i]=rs.getString("sub_name");
i++;
}

int j=0,cnt=0;
st=con.createStatement();
for(i=0;i<count;i++)
{
	
	st=con.createStatement();
 cnt=st.executeUpdate("insert into teacher_sub values('"+dd[i]+"', '"+sub_code[i]+"', '"+sub_name[i]+"','"+std+"','"+division+"');");
}
if(cnt>0)
	out.println("subject are allocated succesfully");
}
catch(Exception e ){
    out.print("<div><font color='red'>The following exception was thrown:</font></div>");
    e.printStackTrace();
    out.println(e);
  
}

%>
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
                          <li><a href="../html/login.html">LogIn</a></li>
                          <li><a href="../html/developers.html">Developers</a></li>
                          <li><a href="../html/gallery.html">Gallery</a></li>
                          <li><a href="../html/contact.html">AboutUs</a></li>
                        </ul>
                </div>
    </div><!-- bOTTOM- FOOTER ENDS -->
</div><!-- row ENDS -->
</div><!-- CONTAINER ENDS -->
  </footer>

<!-- fOOTER eNDS -->



</body>
</html>
