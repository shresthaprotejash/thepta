<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/img/faces/face-2.jpg">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>THEPTA Dashboard</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/css/inner-style.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="${pageContext.request.contextPath}/resources/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="${pageContext.request.contextPath}/resources/css/light-bootstrap-dashboard.css" rel="stylesheet"/>

    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="${pageContext.request.contextPath}/resources/css/pe-icon-7-stroke.css" rel="stylesheet" />
        
</head>
<div class="wrapper">
    <div class="sidebar" data-color="blue" data-image="${pageContext.request.contextPath}/resources/img/sidebar-4.jpg">

    	<div class="sidebar-wrapper">
            <div class="logo">
                <div class="content">
                    <div class="author">
                        <a href="#">
                            <img class="avatar border-gray" src="${pageContext.request.contextPath}/resources/img/faces/face-3.jpg" alt="..."/>
                            <h4 class="title">${fName} ${lName}<br />
                                 <small>${userMailId}</small>
                            </h4>
                        </a>
                    </div>
                </div>

                <a href="#" class="simple-text">
                    Profile Info
                </a>
            </div>

            <ul class="nav">
                                
                 <li class="active">
                    <a href="/THEPTA/dashboard/viewhomework">
                        <p><span class="glyphicon glyphicon-chevron-right"></span>View Homework</p>
                    </a>
                </li>                  
                                	
                    
                
                <li>
                    <a href="/THEPTA/dashboard/viewtest">
                        <p><span class="glyphicon glyphicon-chevron-right"></span>View Test</p>
                    </a>
                </li>

            </ul>
    	</div>
    </div>


    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="${pageContext.request.contextPath}/THEPTA/dashboard">Dashboard</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-globe"></i>
                                    <b class="caret hidden-sm hidden-xs"></b>
                                    <span class="notification hidden-sm hidden-xs">5</span>
                                    <p class="hidden-lg hidden-md">
                                        5 Notifications
                                        <b class="caret"></b>
                                    </p>
                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="#">Notification 1</a></li>
                                <li><a href="#">Notification 2</a></li>
                                <li><a href="#">Notification 3</a></li>
                                <li><a href="#">Notification 4</a></li>
                                <li><a href="#">Another notification</a></li>
                             </ul>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#">
                                <p><span class="glyphicon glyphicon-off"></span>Log out</p>
                            </a>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>

        <div class="sub-nav">      
            <a href="/THEPTA/dashboard/viewhwandtest">
                <h5><span class="glyphicon glyphicon-chevron-left"></span></a>view homework</h5>              
        </div>

     

        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-10  col-md-offset-1">
                        <div class="u-card">
                            <div class="content">
                               
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Date </label>                                                
                                            </div>
                                        </div>
                                        <div class="col-md-7">                                          
                                            <input type="date" name="bday" min="2017-01-02">
                                        </div>
                                    </div>
                                        

                                     
                                </form>
                            </div>
                            <div class="showme btn btn-info pull-right ">Get</div>
                            <br>
                            <br>
                            
                            <hr>
                            <TABLE   BORDER="3" align="center" class="table">
   
                              <TH width="100">subject</TH>                             
                              <TH width="300">Homework</TH>
							  <TH width="200">textbook's name</TH>
							  <TH width="100">Description</TH>
							  
							  
                              
                               <TR>
                                  <TD>English</TD>
                                  <TD>complete page no 231,exercise 4.5</TD>
								  <TD>communication english</TD>
								  <TD>
								  <div class="btn-group">
                                  <a href="/THEPTA/dashboard/english" class="btn btn-primary">Get</a>
							  </div>
                                 </TD>
						 
								
							</TR>
							
                                  
                               </TR>
                               <TR>
                                  <TD>Mathematics</TD>
                                  <TD>complete page no 112,exercise 2.5</TD>
								  <TD>Math is fun</TD>
								   <TD>
								  <div class="btn-group">
                              <a href="/THEPTA/dashboard/math" class="btn btn-primary">Get</a>
							  </div>
                                 </TD>
                                  </TR>                               
                                   
                                   
                                  
                               
                               <TR>
                                  
                                  <TD>Computer Science</TD>
                                  <TD>Revise out page no. 212 and 213</TD>
								  <TD>My computer</TD>
								   <TD>
								  <div class="btn-group">
                              <a href="/THEPTA/dashboard/computer" class="btn btn-primary">Get</a>
							  </div>
                                 </TD>
                                  
                               </TR>
                              

                            </TABLE>

                            <br><br>
                            
                            <br><br>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


         <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="#">
                                Home
                            </a>
                        </li>


                    </ul>
                </nav>
                <p class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script> <a href="#">TShrestha</a>
                </p>
            </div>
        </footer>

    </div>
</div>


</body>

    <!--   Core JS Files   -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-checkbox-radio-switch.js"></script>

	<!--  Charts Plugin -->
	<script src="${pageContext.request.contextPath}/resources/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap-notify.js"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="${pageContext.request.contextPath}/resources/js/light-bootstrap-dashboard.js"></script>

	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="${pageContext.request.contextPath}/resources/js/demo.js"></script>    
  
 

</html>