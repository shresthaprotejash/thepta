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
<body>

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
                <li>                	
                    <a href="/THEPTA/dashboard/uploadattendance">
                        <p><span class="glyphicon glyphicon-chevron-right"></span>Update Attendance</p>
                    </a>
                    
                </li>
                
                <li>
                    <a href="/THEPTA/dashboard/uploadmarks">
                        <p><span class="glyphicon glyphicon-chevron-right"></span>Update Marks</p>
                    </a>
                </li>
                
                <li>
                    <a href="/THEPTA/dashboard/">
                        <p><span class="glyphicon glyphicon-chevron-right"></span>Chat with Parents</p>
                    </a>
                </li>
                
                <li>
                    <a href="/THEPTA/dashboard/">
                        <p><span class="glyphicon glyphicon-chevron-right"></span>Upload Test/Homework</p>
                    </a>
                </li>
                
                <li class="active">
                
                    <a href="/THEPTA/dashboard/viewattendance">
                   
                        <p><span class="glyphicon glyphicon-chevron-right"></span>View Attendance</p>
                    </a>
                </li>
                
                <li>
                    <a href="/THEPTA/dashboard/viewmarks">
                        <p><span class="glyphicon glyphicon-chevron-right"></span>View Marks</p>
                    </a>
                </li>
                
                <li>
                    <a href="/THEPTA/dashboard/">
                        <p><span class="glyphicon glyphicon-chevron-right"></span>Chat with Teachers</p>
                    </a>
                </li>
                
                <li>
                    <a href="/THEPTA/dashboard/viewhwandtest">
                        <p><span class="glyphicon glyphicon-chevron-right"></span>View Test/Homework</p>
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
                    <a class="navbar-brand" href="/THEPTA/dashboard">Dashboard</a>
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
                            <a href="/THEPTA/login">
                                <p><span class="glyphicon glyphicon-off"></span>Log out</p>
                            </a>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>

        <div class="sub-nav">      
            <a href="../dashboard">
                <h5><span class="glyphicon glyphicon-chevron-left"></span></a>View Attendance</h5>              
        </div>

        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-10  col-md-offset-1">
                        <div class="u-card">
                            <div class="content">
                            <div class="row">
                                        <div class="col-md-2">
                                             <label>Name </label>                                                
                                        </div>
                                        
                                        <div class="col-md-7">
                                                                   
                                                <input type="text" class="form-control" disabled placeholder="Name" value='${fName} ${lName}'>
                                            
                                        </div>
                                    </div>
                                </div> 
                                <div class="row">
                                        <div class="col-md-2">
                                           
                                                <label>Class </label>                                                
                                            
                                        </div>
                                        <div class="col-md-2">                                          
                                            <input type="text" class="form-control" disabled placeholder="Class" value="7">
                                        </div>
                                        <div class="col-md-2 col-md-offset-1">
                                                <label>Section </label>                                                
                                          
                                        </div>
                                        <div class="col-md-2">                                          
                                             <input type="text" class="form-control" disabled placeholder="Section" value="A">
                                        </div>
                                    </div>  
                             <hr>
                            
                            <TABLE BORDER="3" align="center">
   
                              <TH width="50">S.N.</TH>
                              <TH width="300">Subject Name</TH>
                              <TH width="80">Present</TH>
                              <TH width="80">Absent</TH>
                              <TH width="80">Total</TH>
                              <TH width="80">Percent</TH>
                              <TH width="80">Mark</TH>
                               <TR>
                                  <TD>1</TD>
                                  <TD>Tejash Shrestha</TD>
                                  <TD>121</TD>
                                  <TD>21</TD>
                                  <TD>142</TD>
                                  <TD>75</TD>
                                  <td style="text-align:center;"><input type="checkbox" name="name1" style="margin-left:auto; margin-right:auto;" ></td>
                               </TR>
                               <TR>
                                  
                                  <TD>2</TD>                                  
                                  <TD>Supreetha Achar K</TD>
                                   <TD>221</TD>
                                  <TD>32</TD>
                                  <TD>421</TD>
                                  <TD>61</TD>
                                  <td>45</td>
                                  
                               </TR>
                               <TR>
                                  <TD>3</TD>
                                  <TD>Medha Mishra</TD>                                  
                                  <TD>221</TD>
                                  <TD>32</TD>
                                  <TD>421</TD>                                  
                                  <TD>61</TD>
                                  <td style="text-align:center;"><input type="checkbox" name="name1" />&nbsp;</td>
                               </TR>
                               <TR>
                                  <TD>4</TD>
                                  <TD>Prerana Rani</TD>                                 
                                  <TD>21</TD>
                                  <TD>52</TD>
                                  <TD>21</TD>                                  
                                  <TD>13</TD>
                                  <td style="text-align:center;"><input type="checkbox" name="name1" />&nbsp;</td>
                               </TR>
                                <TR>
                                  <TD>5</TD>
                                  <TD>Preeti Kumari</TD>                                  
                                  <TD>21</TD>
                                  <TD>52</TD>
                                  <TD>21</TD>                                  
                                  <TD>13</TD>
                                  <td style="text-align:center;"><input type="checkbox" name="name1" />&nbsp;</td>
                               </TR>
                                <TR>
                                  <TD>6</TD>
                                  <TD>Suruchi Rai</TD>
                                  <TD>21</TD>
                                  <TD>52</TD>
                                  <TD>21</TD>                                  
                                  <TD>13</TD>
                                  <td style="text-align:center;"><input type="checkbox" name="name1" />&nbsp;</td>
                               </TR>

                            </TABLE>
                            
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