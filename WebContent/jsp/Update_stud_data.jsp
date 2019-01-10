v<!DOCTYPE html>
<html>
<title>:: Update Student Data ::</title>

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
                  
                         <div class="col-md-7 col-md-push-2">
                              <div class="col md-4 ">
                                   <div class="panel panel-success">
                                        <div class="panel panel-heading">
                                           <h3 class="panel-title">Update student data</h3>
                                        </div>
                               <div class="panel-body">
                                  <div id="reg">
                                    <center>


please fill all the fields to update your profile
<br/><br/>

<form name="login" method="Post" action="Update_stud_data_db.jsp" >  
   

<table border="0">

<tr><td>
				Student ID</td><td><input type="text" name="unm"></td>

	</tr>
<tr><td>
				Student Email</td><td><input type="text" name="semail"></td>

	</tr>			<tr><td>
				Parent Email</td><td><input type="text" name="pemail"></td>
</tr><tr><td>
				Student Mobile No.</td><td><input type="text" name="smob"></td>
</tr><tr><td>
				Parent Mobile No.</td><td><input type="text" name="pmob"></td>
</tr>
<tr>
<td colspan="2" align="center">
<input type="submit" value="update">
</td>
</tr>


</table>

</form>



									

                                                </center>
                                              </div><!-- reg ends -->

                                     </div><!-- Panel body ends -->
                              </div><!--Panel-success ends -->
                           </div><!--col-md-4 ends -->
                       </div><!--col-md-7 ends -->
            </div><!--container ends -->
            

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