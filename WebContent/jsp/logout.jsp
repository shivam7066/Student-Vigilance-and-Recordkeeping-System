<html>
<title>:: LogIn ::</title>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../css/bootstrap.css" rel="stylesheet">
      <link href="../css/main.css" rel="stylesheet">

<script src="../js/jquery.js" ></script>
<script src="../js/bootstrap.min.js" ></script>
</head>



<body>
</div><!-- /.navbar-collapse -->
<!-- navigation Starts -->

  <nav class="navbar navbar-default" id="hdr" role="navigation">
    <div class="container-fluid">
          
          <div class="col-md-13">      
    <div class="col-md-8 "><img class="img-responsive" src="../img/header.png"></div>


  </div><!-- col-md-12-->

<div class="row"></div>



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
  
    <li><a href="boh.html" class="c">Board of Honours</a></li>
    <li><a href="download.html" class="d">Downloads</a></li>
    <li><a href="gallery.html" class="e">Gallery</a></li>
    <li class="active"><a href="login.html" class="f">Vault</a></li>
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

  <li class="active">Login</li>
</ol>


<div class="container">
   <div class="row">
    <div class="col-md-6 col-md-push-3">
<div class="col md-4">
   <div class="panel panel-info">
      <div class="panel panel-heading">
         <h3 class="panel-title">LOGIN</h3>
      </div>
      <div class="panel-body">

<form name="login" method="Post" action="../jsp/login.jsp" >
<center>

<%
session.invalidate();
%>
      <div id="reg">
<table>
<center>
Logout Successful!! </p><p>Kindly Relogin..</p>
</center>
<hr>
<tr><td>Username </td><td ><input type="text" name="username" class="textbox" placeholder="Enter Username" required ></td></tr>
<tr><td>Password</td><td><input type="password" name="password" class="textbox" placeholder="Enter Password" required>
       </td></tr>


                                            <tr><td> <a href="../html/Forgetpassword.html" id="or1">Forgot Password?</a></td><td colspan="1" align="center"><input type="submit" value="Login" class="button1"></td>
                                          </tr>
</table>
</div >
      
</center>
</form>

</div>
</div>
</div>
</div>
</div>
</div>


<script>
   $(function() { 
      $(".btn").click(function(){
         $(this).button('loading').delay(1000).queue(function() {
           $(this).button('reset');
                 });        
      });
   });  
   </script>


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