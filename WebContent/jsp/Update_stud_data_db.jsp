<!DOCTYPE html>
<html>
<title>:: Update Student DB ::</title>

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

  <li class="active">Update Student Data DB</li>
</ol>
</div>


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
         <h3 class="panel-title">ADMIN SECTION</h3>
      </div>
      <div class="panel-body">
                 
<%@page import="java.sql.*"%>
<%
String id,pm,sm,se,pe,typ="NA";
int cnt=0;
id=request.getParameter("unm");
se=request.getParameter("semail");
pe=request.getParameter("pemail");
sm=request.getParameter("smob");
pm=request.getParameter("pmob");



try{
	
	
	Connection con;
	PreparedStatement pst;
	ResultSet rs;

Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student vigilience system?user=root&password=manager");
pst=con.prepareStatement("update stud_personal_db set STUD_EMAIL='"+se+"',PARENT_EMAIL='"+pe+"',STUD_MOBILE='"+sm+"',PARENT_MOBILE='"+pm+"' where SID='"+id+"';");
cnt=pst.executeUpdate();
if(cnt>0)
	out.println("your profile updated successfully");
else
	out.println("error");
con.close();

}
catch(Exception e)
{
out.println(e);
}
%>



        </div><!--panel body ends -->
    </div><!--panel success ends -->
    </div>  <!--col-md-7 ends -->
</div><!--col-md-13 ends -->
</div><!-- container ends -->




</body>
</html>