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
					<li><a href="/THEPTA/dashboard/uploadhomework">
							<p>
								<span class="glyphicon glyphicon-chevron-right"></span>Update
								Homework
							</p>
					</a></li>

					<li class="active"><a href="/THEPTA/dashboard/uploadtest">
							<p>
								<span class="glyphicon glyphicon-chevron-right"></span>Update
								Test
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
				<a href="/THEPTA/dashboard/uploadtestandhomework">
					<h5>
						<span class="glyphicon glyphicon-chevron-left"></span>
				</a>Upload Test
				</h5>
			</div>

			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-10  col-md-offset-1">
							<div class="u-card">
								<div class="content">
									<form>
										<div class="row">
											<div class="col-md-3">
												<div class="form-group">
													<label>Name </label>
												</div>
											</div>
											<div class="col-md-7">
												<div class="form-group">
													<input type="text" class="form-control" disabled
														placeholder="Company" value='${fName} ${lName}'>
												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-md-3">
												<div class="form-group">
													<label>Class </label>
												</div>
											</div>
											<div class="col-md-7">
												<select name="Class" id="small">
													<option value="none" selected>none</option>
													<option value="Class1">Class1</option>
													<option value="Class2">Class2</option>
													<option value="Class3">Class3</option>
													<option value="Class4">Class4</option>
												</select>
											</div>
										</div>

										<div class="row">
											<div class="col-md-3">
												<div class="form-group">
													<label>Section </label>
												</div>
											</div>
											<div class="col-md-7">
												<select name="Section" id="small">
													<option value="none" selected>none</option>
													<option value="Section1">Section1</option>
													<option value="Section2">Section2</option>
													<option value="Section3">Section3</option>
													<option value="Section4">Section4</option>
												</select>
											</div>
										</div>


										<div class="row">
											<div class="col-md-3">
												<div class="form-group">
													<label>Exam Type </label>
												</div>
											</div>
											<div class="col-md-7">
												<select name="Subject">
													<option value="none" selected>none</option>
													<option value="Term1">TermI</option>
													<option value="term2">TermII</option>
													<option value="periodictest">PeriodicTest</option>
													<option value="classtest">ClassTest</option>
													<option value="assignments">Assignments</option>
												</select>
											</div>
										</div>

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
								<br> <br>
								<div id="after-click">
									<hr>
									<TABLE BORDER="3" align="center">

										<TH width="50">S.N.</TH>
										<TH width="100">SUBJECT</TH>
										<TH width="50">DATE</TH>
										<TH width="50">TIME</TH>
										<TH width="50">ROOM NO</TH>
										<TR>
											<TD>1</TD>
											<TD>English</TD>
											<td style="text-align: center;"><input type="textarea"
												name="date" /></td>
											<td style="text-align: center;"><input type="textarea"
												name="time" /></td>
											<td style="text-align: center;"><input type="textarea"
												name="roomno" /></td>

										</TR>
										<TR>
											<TD>2</TD>
											<TD>Mathematics</TD>
											<td style="text-align: center;"><input type="textarea"
												name="date" id="date1"/></td>
											<td style="text-align: center;"><input type="textarea"
												name="time" id="time1" /></td>
											<td style="text-align: center;"><input type="textarea"
												name="roomno" id="room"/></td>

										</TR>
										<TR>
											<TD>3</TD>
											<TD>Computer Science</TD>
											<td style="text-align: center;"><input type="textarea"
												name="date" /></td>
											<td style="text-align: center;"><input type="textarea"
												name="time" /></td>
											<td style="text-align: center;"><input type="textarea"
												name="roomno" /></td>

										</TR>
										

									</TABLE>
									<br> <br>
									<div class="btn btn-info pull-right">Submit</div>
									<br> <br>
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
	</div>


</body>

<!--   Core JS Files   -->
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

<script>
	$(document).ready(function() {
		$(".showme").click(function() {
			$("#after-click").show();
		});
	});
</script>

</html>