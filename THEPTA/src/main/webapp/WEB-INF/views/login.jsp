<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Students Detail Repository</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-1.10.2.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>

</head>
  <script>
    function submit(){
    var userName = document.getElementById('username');
    var userPass = document.getElementById('password');
    
       
        alert(userName.value);
    }
       
</script>
<body>
<div class="container">
	<form method="post" action="${pageContext.request.contextPath}/validatelogin" >
		<div class="wrap">
	
			<div class="avatar">
	      <img src="${pageContext.request.contextPath}/resources/img/avatar.png">
			</div>
			<input type="text" placeholder="username" name = "username" id="username" required>
			<div class="bar">
				<i></i>
			</div>
			<input type="password" placeholder="password" id="password" name = "password" required>
		</div>	
		<div class="form-group text-center">
				<input type="checkbox" tabindex="3" class="" name="remember" id="remember">
				<label for="remember"> Remember Me</label>
		</div>	
		<button onclick="submit();"><b>Sign in</b></button>
	</form>	
	<h4 style="color: red;" align="center">${message}</h4>
</div>
    
<script>
$(function() {	
	var value = "${message}";  
    if (!value) {
            $('.container').hide().slideDown(1000);
        	$('.avatar').hide().slideDown(1300);
        }
});

	
</script>
</body>
</html>