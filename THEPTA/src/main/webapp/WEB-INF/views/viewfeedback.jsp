<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="icon" type="image/png" href="assets/img/faces/face-2.jpg">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>THEPTA Dashboard</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />


<!-- Bootstrap core CSS     -->

<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/css/inner-style.css"
	rel="stylesheet" />

<!-- Animation library for notifications   -->
<link
	href="${pageContext.request.contextPath}/resources/css/animate.min.css"
	rel="stylesheet" />

<!--  Light Bootstrap Table core CSS    -->
<link
	href="${pageContext.request.contextPath}/resources/css/light-bootstrap-dashboard.css"
	rel="stylesheet" />

<!--     Fonts and icons     -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300'
	rel='stylesheet' type='text/css'>
<link
	href="${pageContext.request.contextPath}/resources/css/pe-icon-7-stroke.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
	<div class="wrapper">
		<div class="sidebar" data-color="blue"
			data-image="${pageContext.request.contextPath}/resources/img/sidebar-4.jpg">
			<div class="sidebar-wrapper">
				<div class="logo">
					<div class="content">
						<div class="author">
							<a href="#"> <img class="avatar border-gray"
								src="${pageContext.request.contextPath}/resources/img/faces/face-3.jpg"
								alt="..." />
								<h4 class="title">${fName}
									${lName}<br /> <small>${userMailId}</small>
								</h4>
							</a>
						</div>
					</div>
					<a href="#" class="simple-text"> Profile Info </a>
				</div>

				<ul class="nav">

					<li><a href="/THEPTA/dashboard/uploadattendance">
							<p>
								<span class="glyphicon glyphicon-chevron-right"></span>Update
								Attendance
							</p>
					</a></li>

					<li><a href="/THEPTA/dashboard/uploadmarks">
							<p>
								<span class="glyphicon glyphicon-chevron-right"></span>Update
								Marks
							</p>
					</a></li>

					<li><a href="/THEPTA/dashboard/">
							<p>
								<span class="glyphicon glyphicon-chevron-right"></span>Chat with
								Parents
							</p>
					</a></li>

					<li><a href="/THEPTA/dashboard/">
							<p>
								<span class="glyphicon glyphicon-chevron-right"></span>Upload
								Test/Homework
							</p>
					</a></li>

					<li><a href="/THEPTA/dashboard/viewattendance">

							<p>
								<span class="glyphicon glyphicon-chevron-right"></span>View
								Attendance
							</p>
					</a></li>

					<li><a href="/THEPTA/dashboard/viewmarks">
							<p>
								<span class="glyphicon glyphicon-chevron-right"></span>View
								Marks
							</p>
					</a></li>

					<li><a href="/THEPTA/dashboard/">
							<p>
								<span class="glyphicon glyphicon-chevron-right"></span>Chat with
								Teachers
							</p>
					</a></li>

					<li><a href="/THEPTA/dashboard/viewhwandtest">
							<p>
								<span class="glyphicon glyphicon-chevron-right"></span>View
								Test/Homework
							</p>
					</a></li>

					<li><a href="/THEPTA/dashboard/feedback">
							<p>
								<span class="glyphicon glyphicon-chevron-right"></span>Feedback
							</p>
					</a></li>

					<li class="active"><a href="/THEPTA/dashboard/viewfeedback">
							<p>
								<span class="glyphicon glyphicon-chevron-right"></span>View
								Feedback
							</p>
					</a></li>
				</ul>

			</div>
		</div>
		<div class="main-panel">
			<nav class="navbar navbar-default navbar-fixed">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">Dashboard</a>
					</div>
					<div class="collapse navbar-collapse">
						<ul class="nav navbar-nav navbar-left">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"> <i class="fa fa-globe"></i> <b
									class="caret hidden-sm hidden-xs"></b> <span
									class="notification hidden-sm hidden-xs">5</span>
									<p class="hidden-lg hidden-md">
										5 Notifications <b class="caret"></b>
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
							<li><a href="/THEPTA/login">
									<p>
										<span class="glyphicon glyphicon-off"></span>Log out
									</p>
							</a></li>
						</ul>
					</div>
				</div>
			</nav>

			<div class="sub-nav">
				
					<h5>
					<a href="../dashboard">
						<span class="glyphicon glyphicon-chevron-left"></span>
				</a>View Feedback</h5>
			</div>
			<br> <br>
			<div class="panel">
				<div class="container-fluid">
					<br>
					<div class="u-card">
						<ul class="nav nav-tabs nav-justified">
							<li class="active"><a data-toggle="tab" href="#Subject1">Subject1</a></li>
							<li><a data-toggle="tab" href="#Subject2">Subject2</a></li>
							<li><a data-toggle="tab" href="#Subject3">Subject3</a></li>
							<li><a data-toggle="tab" href="#Subject4">Subject4</a></li>
							<li><a data-toggle="tab" href="#Subject5">Subject5</a></li>
							<li><a data-toggle="tab" href="#Subject6">Subject6</a></li>
						</ul>
						<br> <br>

						<div class="tab-content">
							<div id="Subject1"
								class="tab-pane fade in active w3-panel w3-blue w3-round-xlarg">
								<h3>Teacher:Tejash Shrestha</h3>
								<br>
								<p>
									Lorem ipsum dolor sit amet, consectetur <br>adipisicing
									elit, sed do eiusmod tempor <br>incididunt ut labore et
									dolore magna aliqua.
								</p>
							</div>

							<div id="Subject2"
								class="tab-pane fade in w3-panel w3-green w3-round-xlarg">
								<h3>Subject2</h3>
								<p>Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
							</div>

							<div id="Subject3"
								class="tab-pane fade w3-panel w3-yellow w3-round-xlarg">
								<h3>Subject3</h3>
								<p>Sed ut perspiciatis unde omnis iste natus error sit
									voluptatem accusantium doloremque laudantium, totam rem
									aperiam.</p>
							</div>

							<div id="Subject4"
								class="tab-pane fade  w3-panel w3-orange w3-round-xlarg">
								<h3>Subject4</h3>
								<p>Eaque ipsa quae ab illo inventore veritatis et quasi
									architecto beatae vitae dicta sunt explicabo.</p>
							</div>

							<div id="Subject5"
								class="tab-pane fade  w3-panel w3-black w3-round-xlarg">
								<h3>Subject5</h3>
								<p>Eaque ipsa quae ab illo inventore veritatis et quasi
									architecto beatae vitae dicta sunt explicabo.</p>
							</div>

							<div id="Subject6"
								class="tab-pane fade  w3-panel w3-pink w3-round-xlarg">
								<h3>Subject6</h3>
								<p>Eaque ipsa quae ab illo inventore veritatis et quasi
									architecto beatae vitae dicta sunt explicabo.</p>
							</div>

						</div>
					</div>
				</div>
			</div>
			<footer class="footer">
				<div class="container-fluid">
					<nav class="pull-left">
						<ul>
							<li><a href="#"> Home </a></li>
						</ul>
					</nav>
					<p class="copyright pull-right">
						&copy;
						<script>
							document.write(new Date().getFullYear())
						</script>
						<a href="#">TShrestha</a>
					</p>
				</div>
			</footer>
		</div>
</body>

<!--   Core JS Files   -->


<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="$https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-1.10.2.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"
	type="text/javascript"></script>

<!--  Checkbox, Radio & Switch Plugins -->
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap-checkbox-radio-switch.js"></script>

<!--  Charts Plugin -->
<script
	src="${pageContext.request.contextPath}/resources/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap-notify.js"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script
	src="${pageContext.request.contextPath}/resources/js/light-bootstrap-dashboard.js"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="${pageContext.request.contextPath}/resources/js/demo.js"></script>



</html>