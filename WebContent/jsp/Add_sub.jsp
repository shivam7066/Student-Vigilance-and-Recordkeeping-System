<!DOCTYPE html>
<html>
<title>:: Add Subject ::</title>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="ISO-8859-1">
    <link href="../css/bootstrap.css" rel="stylesheet">
      <link href="../css/main.css" rel="stylesheet">
      <SCRIPT TYPE="text/javascript">
 
/* Function called on change event of Dept Drop Down */   
function populateSubjectMenu() {
  

    var selectedIndexVal = document.getElementById("sem_select").selectedIndex;
    var selectedSemVal =document.getElementById("sem_select").options[selectedIndexVal].value;
 
    selectedIndexVal = document.getElementById("dept_select").selectedIndex;
    var selectedDeptVal =document.getElementById("dept_select").options[selectedIndexVal].value;
    callAjaxFunction(selectedSemVal,selectedDeptVal);
  }
 
/* function called to do Ajax Request */
  function callAjaxFunction(semVal,deptVal){
  var url="Display_sub.jsp?semVal="+semVal+"&deptVal="+deptVal;
 
    var xmlHttp;
        if (window.XMLHttpRequest) { // Mozilla, Safari, ...
 
        var xmlHttp = new XMLHttpRequest();
 
      } else if (window.ActiveXObject) { // IE
 
        var xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
      }
 
    xmlHttp.open('POST', url, true);
    xmlHttp.onreadystatechange = function() {
 
        if (xmlHttp.readyState == 4) {
 
            updatepage(xmlHttp.responseText);
        }
 
    }
xmlHttp.send(url);
  }
 
/* Call back function of Ajax Response*/
function updatepage(response){
//alert(str);
document.getElementById("result").innerHTML = response;

}
</SCRIPT>

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
        </div><!-- col-md-3 ends-->

  </div><!-- col-md-13-->





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

  <li class="active">Add Subject</li>
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
                             Class :
        <label>
        <select name="sem_select" id="sem_select" >
          <option value="">-- Select --</option>
          <option value="1">First</option>
          <option value="2">Second</option>
          <option value="3">Third</option>
          <option value="4">Fourth</option>
          <option value="5">Fifth</option>
          <option value="6">Sixth</option>
          <option value="7">Seven</option>
          <option value="8">Eight</option>
          
        </select>
        </label>

Division :
<select name="dept_select" id="dept_select" onchange="populateSubjectMenu();">
          <option value="">-- Select --</option>
          <option value="A">A</option>
          <option value="B">B</option>
          <option value="C">C</option>
          <option value="D">D</option>
          <option value="E">E</option>
          <option value="F">F</option>
         
          
</select>

<br><br>







<div id="result"></div>
 

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















































