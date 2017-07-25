
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List"%>
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
				
				<ul class="nav" id="teachers">
				
					<li class="active" >
						<a href="/THEPTA/dashboard/uploadattendance">
							<p><span class="glyphicon glyphicon-chevron-right"></span>Update Attendance</p>
						</a>
					</li>

					<li><a href="/THEPTA/dashboard/uploadmarks">
							<p>
								<span class="glyphicon glyphicon-chevron-right"></span>Update Marks</p>
					</a></li>

					<li><a href="/THEPTA/dashboard/">
							<p>
								<span class="glyphicon glyphicon-chevron-right"></span>Chat with
								Parents
							</p>
					</a></li>

					<li><a href="/THEPTA/dashboard/uploadtestandhomework">
							<p>
								<span class="glyphicon glyphicon-chevron-right"></span>Upload
								Test/Homework
							</p>
					</a></li>
					
					<li ><a href="/THEPTA/dashboard/feedback">
							<p>
								<span class="glyphicon glyphicon-chevron-right"></span>Feedback
							</p>
					</a></li>
					<li><a href="/THEPTA/dashboard/uploadcircular">
							<p>
								<span class="glyphicon glyphicon-chevron-right"></span> Upload Circular
							</p>
					</a></li>
					</ul>
					
					<ul class="nav" id="students">
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
					
					<li><a href="/THEPTA/dashboard/viewfeedback">
							<p>
								<span class="glyphicon glyphicon-chevron-right"></span>View
								Feedback
							</p>

					</a></li>
			
					<li><a href="/THEPTA/dashboard/viewcircular">
							<p>
								<span class="glyphicon glyphicon-chevron-right"></span>View Circular
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

						<ul class="nav navbar-nav navbar-right" id="logout">
							<li><a href="/THEPTA/logout">
									<p>
										<span class="glyphicon glyphicon-off"></span>Log out
									</p>
							</a></li>

						</ul>
					</div>
				</div>
			</nav>

			<div class="sub-nav">
				<a href="../dashboard">
					<h5>
						<span class="glyphicon glyphicon-chevron-left"></span>
				</a>Upload Attendance
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
												<select name="Class" id="classListSelectBox">										
													<option value="none" selected>none</option>

													<c:forEach items="${teacherSubjectList}" var="teacherSubject">
														<option value="${teacherSubject.classId}" id="${teacherSubject.classId}">${teacherSubject.className}</option>
													</c:forEach>
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
												<select name="Section" id="sectionListSelectId">
													<option value="none" selected>none</option>									
												</select>
											</div>
										</div>

										<div class="row">
											<div class="col-md-3">
												<div class="form-group">
													<label>Subject </label>
												</div>
											</div>
											<div class="col-md-7">
												<select name="Subject" id="subjectListSelect">
													<option value="none" selected>none</option>												
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
												<input type="date" name="bday" id="attandanceDate" min="2017-01-02">
											</div>
										</div>



									</form>
								</div>
								<div class="showme btn btn-info pull-right">Get</div>
								<br> <br>
								<div id="after-click">
									<hr>
									<form action="${pageContext.request.contextPath}/submitattendance" method="post">
									<TABLE BORDER="3" align="center" id ="studentsAttendanceList">
										<TH width="50">S.N.</TH>
										<TH width="300">Students Name</TH>	
										<TH width="80">Present</TH>	
										<TH width="80">Absent</TH>				
										<TH width="80">Total</TH>				
										<TH width="80">Percent</TH>				
										<TH width="80">Mark</TH>
										
											

									</TABLE>
									</form>
									<br>
									<br>									
									<div onclick="submit();" class="btn btn-info pull-right" style="margin-left:10px">Submit</div>
									<div onclick="reload();" class="btn btn-danger pull-right">Cancel</div>
									<br>
									<br>
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
<!-- ajax utility file -->
<script src="${pageContext.request.contextPath}/resources/js/ajaxUtil.js" /></script>
<script>
$(document).ready(function(){	
    $('#teachers').hide();
	$('#students').hide();
	
	var user=${userType};
	if (user==0)
		{
			$('#teachers').show();
		}
	else
		{
			$('#students').show();
		}
    
	document.getElementById("sectionListSelectId").disabled = true;
    document.getElementById("subjectListSelect").disabled = true;
    
    $("#classListSelectBox").change(function(){    	 
    	var teacherId = ${userId};
    	var classId = $("#classListSelectBox").val();
    	var url = "${pageContext.request.contextPath}/dashboard/getsectionlistbyteacheridandclassid/"+teacherId+"/"+classId;
    	if (classId!="none"){
    	callAjaxGetReqest("${pageContext.request.contextPath}", url, function(result){
    		result = JSON.parse(result);
    		console.log(result.teacherSubjectSectionList);
    		var output = [];
    		output.push('<option value="none">none</option>');
    		document.getElementById("sectionListSelectId").disabled = false;
    		result.teacherSubjectSectionList.forEach(function(item) {
    			output.push('<option value="'+ item.sectionId +'">'+ item.sectionName +'</option>');
    		});
    		$('#sectionListSelectId').html(output.join(''));

		});
    	}
    });
    
    $("#sectionListSelectId").change(function(){
    	document.getElementById("subjectListSelect").disabled = false;
    	var teacherId = ${userId};
    	var classId = $("#classListSelectBox").val();
    	var sectionId=$("#sectionListSelectId").val();
    	var url = "${pageContext.request.contextPath}/dashboard/getsectionlistbyteacheridandclassid/"+teacherId+"/"+classId;
    	if (classId!="none" && sectionId!="none"){
    	callAjaxGetReqest("${pageContext.request.contextPath}", url, function(result){
    		result = JSON.parse(result);
    		console.log(result.teacherSubjectSectionList);
    		var output = [];
    		output.push('<option value="none">none</option>');
    		document.getElementById("subjectListSelect").disabled = false;
    		result.teacherSubjectSectionList.forEach(function(item) {
    			if(item.sectionId==sectionId)
    			output.push('<option value="'+ item.subjectId +'">'+ item.subjectName +'</option>');
    		});
    		$('#subjectListSelect').html(output.join(''));

    	});
    	}
    });
    
    
    $(".showme").click(function(){
    	var teacherId = ${userId};
    	var classId = $("#classListSelectBox").val();
    	var sectionId=$("#sectionListSelectId").val();
        var subjectId=$("#subjectListSelect").val();
        var date=$("#attandanceDate").val();
    	if (classId!="none" && sectionId!="none" && subjectId!="none" && date!=""){
        	$("#after-click").show();
        	$('.showme').addClass('btn-success').removeClass('btn-info').removeClass('btn-danger');
        	document.getElementById("classListSelectBox").disabled = true;
        	document.getElementById("sectionListSelectId").disabled = true;
            document.getElementById("subjectListSelect").disabled = true;
            document.getElementById("attandanceDate").disabled = true;
            $('.showme').hide(1000);
            
            var url = "${pageContext.request.contextPath}/dashboard/getsectionlistbyteacheridandclassid/"+teacherId+"/"+classId+"/"+sectionId+"/"+subjectId;
            if (classId!="none" && sectionId!="none"){
        	callAjaxGetReqest("${pageContext.request.contextPath}", url, function(result){
        		result = JSON.parse(result);
        		var output=[];
        		var sn=1
        		result.studentList.forEach(function(item) {
        			if(item.classId==classId && item.sectionId==sectionId )
        			var table = document.getElementById("studentsAttendanceList");
        			var row = table.insertRow();
				    var cell1 = row.insertCell(0);
				    var cell2 = row.insertCell(1);
				    var cell3 = row.insertCell(2);
				    var cell4 = row.insertCell(3);
				    var cell5 = row.insertCell(4);
				    var cell6 = row.insertCell(5);
				    var cell7 = row.insertCell(6);
				    cell1.innerHTML = sn;
				    cell2.innerHTML = item.studentName;
				    cell3.innerHTML = item.presentDays;
				    cell4.innerHTML = item.absentDays;
				    cell5.innerHTML = item.totalDays;
				    cell6.innerHTML = item.percentage;
				    cell7.innerHTML = '<input type="checkbox" name="mark" value="'+item.studentId+'" />';
				    cell7.style.textAlign = "center";  	
        					      				  
        			sn=sn+1;
        		});     		
        	});
    	}
    	}
    	else
    	{
    		$('.showme').addClass('btn-danger').removeClass('btn-info').removeClass('btn-success');
    		$('.showme').fadeOut(100).fadeIn(1500);
    	}
    });
	
});

function submit() {
	var present= new Array();
	var  absent= new Array();	

	
	$("input:checkbox[name=mark]:checked").each(function(){
	    present.push($(this).val());
	});
 	$("input:checkbox[name=mark]:not(:checked)").each(function(){
	    absent.push($(this).val());
	});


	var formdata = new FormData();
	formdata.append("present_student", present);
	formdata.append("absent_student", absent);
	var subjectId=$("#subjectListSelect").val();
	var url = "${pageContext.request.contextPath}/dashboard/"+subjectId+"/submitAttendance";
	callAjaxPostReqest("${pageContext.request.contextPath}", url, formdata, function(result){
		if (result==1) {
			alert("Records updated sucessfully!!!");
			location.reload();
		}
		else {
			alert("Opps!Error encountered. Please try again");
		}
			
	});

}

function reload() {
	 location.reload();
}
</script>

</html>