<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	
	<!-- Date Time Picker Bootstrap CSS -->
<link
	href="${pageContext.request.contextPath}/resources/css/inner-style.css"
	rel="stylesheet" />
	
<!-- Date Time Picker Bootstrap CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.css"></link>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.theme.css"></link>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.timepicker.min.css">
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
												<select name="Class" id="classListSelectBox">
													<option value="none" selected>none</option>

													<c:forEach items="${teacherSubjectList}"
														var="teacherSubject">
														<option value="${teacherSubject.classId}"
															id="${teacherSubject.classId}">${teacherSubject.className}</option>
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
													<label>Exam Type </label>
												</div>
											</div>
											<div class="col-md-7">
												<select name="Class" id="testTypeListSelectBox">
													<option value="none" selected>none</option>

													<c:forEach items="${testTypeList}" var="testTypeobject">
														<option value="${testTypeobject.testType}">${testTypeobject.testTypeName}</option>
													</c:forEach>
												</select>
											</div>
										</div>
									</form>
								</div>
								<div class="showme btn btn-info pull-right ">Get</div>
								<br> <br>
								<div id="after-click">
									<hr>
									
									<TABLE BORDER="3" align="center" id="uploadTestTable">

										<TH width="50">S.N.</TH>
										<TH width="100">SUBJECT</TH>
										<TH width="200">DATE</TH>
										<TH width="200">TIME</TH>
										<TH width="50">ROOM NO</TH>
									</TABLE>
									<br> <br>
								<div onclick="uploadTestSheet();" class="btn btn-info pull-right" style="margin-left:10px">Submit</div>
								<div onclick="reload();" class="btn btn-danger pull-right">Cancel</div>
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
	
	<!-- ajax utility file -->
<script
	src="${pageContext.request.contextPath}/resources/js/ajaxUtil.js" /></script>



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
<script src="${pageContext.request.contextPath}/resources/js/jquery.timepicker.min.js"></script>
<!-- Date Time Picker JS  -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
<style>
.ui-timepicker-container{ 
     z-index:1151 !important; 
}
</style>
<script>
$(document).ready(function(){	
    $('#teachers').hide();
	$('#students').hide();
	$('input.datePicker').datepicker();
	$('input.timePicker').timepicker();
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
    
    $("#classListSelectBox").change(function(){    	 
    	var teacherId = ${userId};
    	var classId = $("#classListSelectBox").val();
    	var url = "${pageContext.request.contextPath}/dashboard/getsectionlistbyteacheridandclassid/"+teacherId+"/"+classId;
    	if (classId!="none"){
    	callAjaxGetReqest("${pageContext.request.contextPath}", url, function(result){
    		result = JSON.parse(result);
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
    
    
    
    $(".showme").click(function(){
    	
    	var teacherId = ${userId};
    	var classId = $("#classListSelectBox").val();
    	var sectionId=$("#sectionListSelectId").val();
        var testType=$("#testTypeListSelectBox").val();
        var date=$("#attandanceDate").val();
        $("#studentId").val(teacherId);
        $("#classId").val(classId);
        $("#testType").val(testType);
    	if (classId!="none" && sectionId!="none" && testType!="none" ){
        	$("#after-click").show();
        	$('.showme').addClass('btn-success').removeClass('btn-info').removeClass('btn-danger');
         	document.getElementById("classListSelectBox").disabled = true;
        	document.getElementById("sectionListSelectId").disabled = true;
            document.getElementById("testTypeListSelectBox").disabled = true;
            $('.showme').hide(1000);
            
            var url = "${pageContext.request.contextPath}/dashboard/getsubjectlistbyteacheridclassidandsectionid/"+teacherId+"/"+classId+"/"+sectionId;
            if (teacherId!="none" && classId!="none"){
        	callAjaxGetReqest("${pageContext.request.contextPath}", url, function(result){
        		result = JSON.parse(result);
        		console.log(result);
        		var output=[];
        		var sn=1;
				var table = document.getElementById("uploadTestTable");
        		result.teacherSubjectSectionList.forEach(function(item) {
        			var row = table.insertRow();
        			row.className = 'testrow';
				    var cell1 = row.insertCell(0);
				    var cell2 = row.insertCell(1);
				    var cell3 = row.insertCell(2);
				    var cell4 = row.insertCell(3);
				    var cell5 = row.insertCell(4);
				    cell1.innerHTML = sn;
				    cell2.innerHTML = item.subjectName;
				    cell3.innerHTML = '<input type="text" class="form-control datePicker" name="datedemo" />';
				    cell3.style.textAlign = "center"; 
				    cell4.innerHTML = '<input type="text" class="form-control timePicker" name="timedemo" />';
				    cell4.style.textAlign = "center"; 
				    cell5.innerHTML = '<input type="text" class="form-control roomno" id="subjectId_'+item.subjectId+'" name="roomNo" />';
				    cell5.style.textAlign = "center"; 
					sn=sn+1;
					$('input.datePicker').datepicker({ dateFormat: 'dd-mm-yy' });
		        	$('input.timePicker').timepicker();
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

function uploadTestSheet() {
	
	var testRowDetail = new Array();
	var formdata = new FormData();
	
	var teacherId = ${userId};
	var classId = $("#classListSelectBox").val();
	var sectionId=$("#sectionListSelectId").val();
    var testType=$("#testTypeListSelectBox").val();

    formdata.append("teacherId", teacherId);
	formdata.append("classId", classId);
    formdata.append("sectionId", sectionId);
	formdata.append("testType", testType);

	var subjectId = 0, testDate = "", testTime = "", roomNo = 0;
	
	$("tr.testrow").each(function() {
		$this = $(this);
		subjectId = $this.find("input.roomno").attr('id').split('_')[1].replace(/^\s*/, "").replace(/\s*$/, "");
		testDate = $this.find("input.datePicker").val(); 
		testTime = $this.find("input.timePicker").val(); 
		roomNo = $this.find("input.roomno").val().replace(/^\s*/, "").replace(/\s*$/, "");
		  
		testRowDetail.push(subjectId + "_" + roomNo + "_" + testDate + "_" + testTime);			  
	});
	formdata.append("testsDetail", testRowDetail);

 	var url = "${pageContext.request.contextPath}/dashboard/submittest";
	callAjaxPostReqest("${pageContext.request.contextPath}", url, formdata, function(result){
		if (result > 0) {
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