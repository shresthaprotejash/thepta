<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="assets/img/faces/face-2.jpg">
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
                            <h4 class="title">Tejash Shrestha<br />
                                 <small>shrestha123</small>
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
                    <a href="dashboard">
                        <i class="pe-7s-graph"></i>
                        <p>Dashboard</p>
                    </a>
                </li>

                <li>
                    <a href="userprofile">
                        <i class="pe-7s-user"></i>
                        <p>User Profile</p>
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
                    <a class="navbar-brand" href="#">Dashboard</a>
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
        	 <a href="/THEPTA/dashboard">
          		<h5><span class="glyphicon glyphicon-chevron-left"></span></a>Feedback</h5>
       	</div>
        <br>
        <br>
        <div class="content">
        	<div class="container-fluid">
        	<div class="u-card">
        		<form>
        			<div class="row">       			 	
                    	<div class="col-md-3">
                        	<div class="form-group">
                           		<label>Subject</label>                                                
                        	</div>
                    	</div>
                    	<div class="col-md-7">  
      						<select name="subject" id="small" >
      					 		<option value="none" selected>none</option>
       							<option>subject1</option>
        						<option>subject2</option>
        						<option>subject3</option>
        						<option>subject4</option>
      						</select>
       					</div>
       				</div> 
        			<div class="row">
                		<div class="col-md-3">
							<div class="form-group">
                            	<label>Student Id </label>                                                
                            </div>
                    	</div>
                    	<div class="col-md-7">
                    		<div class="form-group">                        
                        		<input type="text" class="form-control"  placeholder="student id" >
                       		</div>
                    	</div>
                 	</div>            
                 	
       				<div class="form-group">
      					<label for="feedback">Feedback</label>
     					<textarea class="form-control" rows="6" id="feedback"></textarea>
     					<br>
     					<br>
     					<a href="#" class="btn btn-info pull-right " value="Submit">Submit</a>
    				</div>  			
	      		</form> 
	      		
	      		  		 
      	 </div>
      	 </div>
         
      </div>
       <footer class="footer">
           <div class="container-fluid">
               <nav class="pull-left">
                   <ul>
                       <li>
                           <a href="#">Home</a>
                       </li>
                    </ul>
               </nav>
               <p class="copyright pull-right">
                   &copy; <script>document.write(new Date().getFullYear())</script> <a href="#">TShrestha</a>
               </p>
            </div>
       </footer>
    

 </div>
</body>

    <!--   Core JS Files   -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
    <script type="text/javascript">
        $(document).ready(function(){

            demo.initChartist();

            $.notify({
                icon: 'pe-7s-bell',
                message: "Welcome <b>Tejash Shrestha</b> - view the updates."

            },{
                type: 'info',
                timer: 1000
            });

        });
    </script>
   

</html>