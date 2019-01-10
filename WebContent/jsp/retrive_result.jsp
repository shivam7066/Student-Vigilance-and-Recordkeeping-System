<!DOCTYPE html>
<html>
<title>:: Retrieve Result ::</title>

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
  
    <li><a href="boh.html" class="c">Facilities</a></li>
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

  <li class="active">Retrieve Result</li>
</ol>
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
         <h3 class="panel-title">Retrieve Result</h3>
      </div>
      <div class="panel-body">
                            <div id="reg">
                                   <%@page import="java.sql.*"%>

						<%
						try{
							String sid=String.valueOf(session.getAttribute("id"));
							//String sid=request.getParameter("sid");
						String type=request.getParameter("type");

						Connection con;
							Statement st;	
						ResultSet rs;
						Class.forName("com.mysql.jdbc.Driver");
						con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student vigilience system?user=root&password=manager");

						st=con.createStatement();
						rs=st.executeQuery("select * from stud_personal_db where sid='"+sid+"'");
						rs.next();
						%><table><tr><td>
						Name:</td><td><%=rs.getString("FIRST_NAME")%>
						&nbsp;<%=rs.getString("MID_NAME")%>
						&nbsp;<%=rs.getString("LAST_NAME")%></td></tr>
						<tr><td>std:</td><td><%=rs.getString("STD")%></td></tr>
						<tr><td>Div:</td><td><%=rs.getString("DIVISION")%></td></tr>
						<tr><td>Stud-ID: </td><td><%=sid%></td></tr>
						</table>
						
						
						<hr><br>
						<%
						String sid1;
						double marks;
						double total;
						st=con.createStatement();
						rs=st.executeQuery("select * from "+type+" where sid='"+sid+"'");
						rs.next();%>
						
						
						<center>
						<table border="2" width="400px" >
						
						
						
						<tr><th>Subject</th><th>Marks</th></tr>
						
						
						<tr><td>Marathi</td><td><%=rs.getInt("marathi")%></td></tr>
						<tr><td>English</td><td><%=rs.getInt("english")%></td></tr>
						<tr><td>Maths</td><td><%=rs.getInt("maths")%></td></tr>
						<tr><td>Science</td><td><%=rs.getInt("science")%></td></tr>
						<tr><td>History</td><td><%=rs.getInt("history")%></td></tr>
						<tr><td>Geography</td><td><%=rs.getInt("geography")%></td></tr>
						<tr><td>Total</td><td><%=rs.getInt("total")%></td></tr>
						</table>
						</center>

						<%
						}catch(Exception e)
						{
						e.printStackTrace();
						out.print(e);
						}
						%>
    </div><!-- reg ends -->


        </div><!--panel body ends -->
    </div><!--panel success ends -->
    </div>  <!--col-md-7 ends -->
</div><!--col-md-13 ends -->
</div><!-- container ends -->






<!-- fOOTER eNDS -->



</body>
</html>
