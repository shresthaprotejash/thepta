
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png"
		href="${pageContext.request.contextPath}/resources/img/faces/face-2.jpg">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	
	<title>THEPTA Sign Up</title>
	
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
		name='viewport' />
	<meta name="viewport" content="width=device-width" />
	
	<!-- Bootstrap core CSS     -->
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/inner-style.css" />
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
	
	<!-- Animation library for notifications   -->
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/animate.min.css" />
	
	<!--  Light Bootstrap Table core CSS    -->
	<link rel="stylesheet" 
		href="${pageContext.request.contextPath}/resources/css/light-bootstrap-dashboard.css" />
	
	<!--     Fonts and icons     -->
	<link rel="stylesheet"
		href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300'
		rel='stylesheet' type='text/css'>
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/pe-icon-7-stroke.css"  />
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/signupstyle.css" />
</head>
<body>
	<div class="container">
		<form action="${pageContext.request.contextPath}/dosignup" onsubmit="return validateSignUp();" 
		 method="post" enctype="multipart/form-data">
			<h2>Sign Up</h2>
			<fieldset>
				<legend>
					<span class="number">1</span>Your basic info
				</legend>
				<div class="row">
					<div class="col-sm-6">
						<label for="fname">FirstName: </label> <input type="text" id="fName"
							name="firstName" class="form-control">
					</div>
					<div class="col-sm-6">
						<label for="lname">LastName: </label> <input type="text" id="lName"
							name="lastName" class="form-control">
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<label for="gender">Gender: </label> 
							<input type="radio" value="M"  name="gender">Male<br> 
							<input type="radio" value="F" name="gender">Female
					</div>
					<div class="col-sm-6">
						<label for="gender">User Type: </label>
							<input type="radio" class="teacherORstudent" value="T" name="usertype">Teacher<br> 
							<input type="radio" class="teacherORstudent" value="S" name="usertype">Student
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<label for="mail">Mail-id: </label> <input type="email" id="mailId"
							name="user_email" class="form-control">
					</div>
					<div class="col-sm-6">
						<label for="phoneNo">Phone-No: </label> <input type="number" id="phoneNo"
							name="user_phoneno" class="form-control">  
					</div>
				</div>
				<div class="row" >
					<div class="col-sm-6">
						<label for="address">Address: </label>
						<input type="text" id="address" name="address" class="form-control">
					</div>
					<div class="col-sm-6">
						<label for="age">age:</label> <input type="number" id="age"
							name="age" class="form-control">
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<label for="password">Password: </label> <input type="password"
							id="password" name="user_password" class="form-control">
					</div>
					<div class="col-sm-6">
						<label for="c_password">Confirm Password: </label> <input
							type="password" id="c_password" name="c_user_password" class="form-control">
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3">
						<span class="text-danger" id="errormsg" style="display: none;"></span><br>
						<input type="submit" class="custom-submit-btn" value="Create account" />
					</div>
				</div>
			</fieldset>
		</form>
	</div>
</body>
<!--   Core JS Files   -->
<script	src="${pageContext.request.contextPath}/resources/js/jquery-1.10.2.js"type="text/javascript"></script>
	<!-- ajax utility file -->
<script src="${pageContext.request.contextPath}/resources/js/ajaxUtil.js" /></script>
<script>

	$(document).ready(function(){
		$('#stud_detail').hide();
	    $('#teach_detail').hide();
		$('#teacher').click(function(){
		  $('#stud_detail').hide();
		  $('#teach_detail').show();
		});
		$('#student').click(function(){
		  $('#stud_detail').show();
		  $('#teach_detail').hide();
		});
		//document.getElementById("subjectSelection").disabled = true;
	    $("#classSelection").change(function(){    		   
	    	var classId = $("#classSelection").val(); 
	      	var url = "${pageContext.request.contextPath}/getsubjectByClassId/"+ classId;
	      	if (classId!="none"){
		      	callAjaxGetReqest("${pageContext.request.contextPath}", url, function(result){
		      		result = JSON.parse(result);
		      		console.log(result.subjectList);
		      		var output = [];
		      		output.push('<option value="none">none</option>');
		      		document.getElementById("subjectSelection").disabled = false;
		      		result.subjectList.forEach(function(item) {
		      			output.push('<option value="'+ item.subjectId +'">'+ item.subjectName +'</option>');
		      		});
		      		$('#subjectSelection').html(output.join(''));
				});
	      	}
		});
	});
	function validateSignUp(){

		var fName = $("#fName").val().trim();
		var lName = $("#lName").val().trim();
		var mailId = $("#mailId").val().trim();
		var phoneNo = $("#phoneNo").val().trim();
		var age = $("#age").val().trim();
		var address = $("#address").val().trim();
		var password = $("#password").val().trim();
		var c_password = $("#c_password").val().trim();
		
		if(fName.length == 0){
			$("#errormsg").text("First name cann't be blank.");
			$("#errormsg").css({"display": "inline-block"});
			$("#fName").focus();
			return false;
		}else if(lName.length == 0){
			$("#errormsg").text("Last name not valid.");
			$("#errormsg").css({"display": "inline-block"});
			$("#lName").focus();
			return false;
		}else if($('input[name=gender]:checked').length<=0){
			$("#errormsg").text("Gender not valid.");
			$("#errormsg").css({"display": "inline-block"});
			return false;
		}else if($('input[name=usertype]:checked').length<=0){
			$("#errormsg").text("User type not valid.");
			$("#errormsg").css({"display": "inline-block"});
			return false;
		}else if(!validateEmail(mailId)){
			$("#errormsg").text("Email not valid.");
			$("#errormsg").css({"display": "inline-block"});
			$("#mailId").focus();
			return false;
		}else if(phoneNo.length == 0){
			$("#errormsg").text("Phone number cann't be blank.");
			$("#errormsg").css({"display": "inline-block"});
			$("#phoneNo").focus();
			return false;
		}else if(address.length == 0){
			$("#errormsg").text("Address not valid.");
			$("#errormsg").css({"display": "inline-block"});
			$("#address").focus();
			return false;
		}else if(age.length == 0){
			$("#errormsg").text("Age not valid.");
			$("#errormsg").css({"display": "inline-block"});
			$("#age").focus();
			return false;
		}else if(password.length == 0){
			$("#errormsg").text("Password not valid.");
			$("#errormsg").css({"display": "inline-block"});
			$("#password").focus();
			return false;
		}else if(c_password.length == 0 || password !== c_password){
			$("#errormsg").text("Password and confirm password doesn't match.");
			$("#errormsg").css({"display": "inline-block"});
			$("#c_password").focus();
			return false;
		}else{
			alert
		    return true;
		}
	}
	function isValidInput(value){
		
		var newPattern = new RegExp(/[<>]/);
		
		if (newPattern.test(value) == true) {
			return false;
		}else{
			return true;
		}
	}
	function validateEmail(email) { 
	    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	    return re.test(email);
	} 
	
	function validatePhoneNo(inputtxt){  
	   var phoneno = /^\d{10}$/;  
	   if(inputtxt.value.match(phoneno)){  
	       return false;  
	   }else{  
	      return true;  
	   }  
	}

	function submited(){
	
		var url = "${pageContext.request.contextPath}/validateFields";
		callAjaxPostReqest("${pageContext.request.contextPath}", url, function(result){
			alert(result);
		});
		var fName=$("#fName").val();
		var lName=$("#lName").val();
		var mailid=$("#mailId").val();
		var phoneNo=$("#phoneNo").val();
		var gender=document.querySelector('input[name="gender"]:checked').value;
		var age=$("#age").val();
		var address=$("#address").val();
		var password=$("#password").val();
		var cpassword=$("#c_password").val();
		var isteacher=document.querySelector('input[name="userDetail"]:checked').value;
		/* alert(fName);
		alert(phoneNo);
		alert(password);
		alert(lName);
		alert(mailid); */
		alert(gender);
		/* alert(age);
		alert(address);
		alert(cpassword); 
		
		else if(!validatePhoneNo(phoneNo)){
		$("#errormsg").text("Phone number not valid.");
		$("#errormsg").css({"display": "inline-block"});
		//alert("!");
		return false;
		
	}
		*/
		alert(isteacher);
		alert("byeee");	
	}
</script>
</html>