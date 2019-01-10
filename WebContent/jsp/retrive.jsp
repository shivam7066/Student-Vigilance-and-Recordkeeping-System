
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>:: Student Attendance Retrieve ::</title>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="ISO-8859-1">
    <link href="../css/bootstrap.css" rel="stylesheet">
      <link href="../css/main.css" rel="stylesheet">

<!-- AJAX REQUEST STARTS -->

	<script type="javascript" src="../js/jquery-1.10.2.js"></script>

	<script>
	function myFunction(x) {
		mywindow=window.open(x, "_blank", "toolbar=yes, scrollbars=yes, resizable=yes, top=1, left=1, width=1, height=1");
	    setInterval(function(){ 
	    
	    	
	    	mywindow.close();
	    		
	    	
	    
	    }
	    
	    
	    
	    , 15000);
	}

</script>
<!-- AjAX REQUEST ENDS-->


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

  <li class="active">Retrieve Attendance</li>
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
         <h3 class="panel-title">View Attendance</h3>
      </div>
      <div class="panel-body">
                            <div id="reg">
                               <%@page import="java.sql.*"%>

							<%
							String msg="";
							String url="";
							try{
							int std=Integer.parseInt(request.getParameter("sem_select"));
							String div=request.getParameter("dept_select");

							//out.print("hello");
								Connection con;
								Statement st;	
							ResultSet rs,rs1;
							Class.forName("com.mysql.jdbc.Driver");
							con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student vigilience system?user=root&password=manager");
							st=con.createStatement();

							rs=st.executeQuery("desc "+std+div+"_attendance");

							rs.next();
							%>

							<%

							//out.print("hello");
							String[] subject=new String[15];
								ResultSet rs3;
							st=con.createStatement();
								rs3=st.executeQuery("select sub_name from add_subject where std='4';");
							int count=0;
							while(rs3.next())
							{
							subject[count]=rs3.getString("sub_name");
							count++;

							}

							int[][] s=new int[20][20];
							int[][] ts=new int[20][20];
							 rs.next();
							int i=0;
							String[] id=new String[60];
							String subject1;
							int status;
							int b=0;
							//out.print("hello");
							while(rs.next())
							{

							id[i]=rs.getString("Field");
							st=con.createStatement();
							rs1=st.executeQuery("select subject,"+id[i]+" from "+std+div+"_attendance");
							while(rs1.next())
							{
								
								subject1=rs1.getString("subject");
							status=Integer.parseInt(rs1.getString(id[i]));
							for(int a=0;a<count;a++)
							{
							b=a+1;
							if(subject1.equals(subject[a]))
							{
							if(status==1)
							{
							s[a][i]++;
							ts[a][i]++;
							}
							else
							ts[a][i]++;
							}
							}

							}
							i++;
							}
							out.print("Use send Button to inform parents!!");
							b=0;
							%>						
							<hr><br /><table border="1">
							<tr>
							<th>Student ID</th>
							<th colspan="<%=count%>">subject</th><th>submit</th></tr>
							<tr>
							<td> </td>
							<%
							for(int d=0;d<count;d++)
							{%>
							<td><%=subject[d]%></td>
							<% } %>
							</tr>
							<%
							for(int c=0;c<i;c++)
							{ %><tr><td><%
							out.print(id[c]);

							%></td><%
							for(int d=0;d<count;d++)
							{
							ts[d][c]=(s[d][c]*100)/ts[d][c];
							msg=msg+"%0A"+subject[d]+"+"+ts[d][c];
							%><td>
							<%=ts[d][c]%>%</td>
							<%}
							
							%><td><input type="submit" onclick="myFunction('http://www.smshorizon.co.in/api/sendsms.php?user=tejaswasule&apikey=MlAlsL0mAW8y3Iz2U6eW&mobile=9960633763&message=Attendance+of+Your+child:%0A<%=msg%>&senderid=xxyy&type=txt');" type="button" value="send"></td></tr><%
									
							}
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






</body>
</html>
