<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath}/resources/img/faces/face-2.jpg">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>THEPTA Dashboard</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />


<!-- Bootstrap core CSS     -->
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
<link href="${pageContext.request.contextPath}/resources/css/w3.css"
	rel="stylesheet" />

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

				<ul class="nav" >

					<li><a href="/THEPTA/dashboard/viewhomework">
							<p>
								<span class="glyphicon glyphicon-chevron-right"></span>View
								Homework
							</p>
					</a></li>



					<li class="active"><a href="/THEPTA/dashboard/viewtest">
							<p>
								<span class="glyphicon glyphicon-chevron-right"></span>View Test
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
						<a class="navbar-brand" href="/THEPTA/dashboard">Dashboard</a>
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
				<a href="viewtest.html">
					<h5>
						<span class="glyphicon glyphicon-chevron-left"></span>
				</a>View Assignments
				</h5>
			</div>

			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-10  col-md-offset-1">
							<div class="u-card">
								<div class="content">
									<form>
										<p id="demo"></p>
										<script>
										var d = new Date();
                                        document.getElementById("demo").innerHTML = d.toDateString(); 
									</script>
										<br>
										<TABLE BORDER="3" align="center">
											<TH width="50">S.N.</TH>
											<TH width="80">SUBJECT</TH>
											<TH width="80">PERIOD</TH>
											<TH width="80">Assignments</TH>
											<TH width="100">help</TH>

											<TR>
												<TD>1</TD>
												<TD>ENGLISH</TD>
												<TD>II</TD>
												<TD>check note book,draw a family tree</TD>
												<TD>take help from google search or text book</TD>
											</TR>
											<TR>
												<TD>2</TD>
												<TD>MATH</TD>
												<TD>I</TD>
												<TD>-</TD>
												<TD>-</TD>
											</TR>
											<TR>
												<TD>3</TD>
												<TD>COMPUTER SCIENCE</TD>
												<TD>IV</TD>
												<TD>-</TD>
												<TD>-</TD>
											</TR>
										</TABLE>
										<br> <br>

										<footer class="footer">
											<div class="container-fluid">
												<nav class="pull-left">
													<ul>
														<li><a href="#"> Home </a></li>
													</ul>
												</nav>
												<p class="copyright pull-right">
													&copy;
													<script>document.write(new Date().getFullYear())</script>
													<a href="#">TShrestha</a>
												</p>
											</div>
										</footer>
								</div>
							</div>
</body>

<!--   Core JS Files   -->
<script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>



<!--  Charts Plugin -->
<script src="assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="assets/js/bootstrap-notify.js"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="assets/js/light-bootstrap-dashboard.js"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="assets/js/demo.js"></script>





<script>
$(document).ready(function(){
    $(".showme").click(function(){
        $("#after-click").show();
    });
});
</script>

</html>