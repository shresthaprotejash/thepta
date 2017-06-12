<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Students Detail Repository</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/jquery.min.js" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" />

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
<div class="wrap">
		<div class="avatar">
      <img src="${pageContext.request.contextPath}/resources/img/avatar.png">
		</div>
		<input type="text" placeholder="username" id="username" required>
		<div class="bar">
			<i></i>
		</div>
		<input type="password" placeholder="password" id="password" required>
	</div>	
	  <div class="form-group text-center">
			<input type="checkbox" tabindex="3" class="" name="remember" id="remember">
			<label for="remember"> Remember Me</label>
		</div>	
		<button onclick="submit();"><b>Sign in</b></button>
	</div>
    <script src="jquery.min.js"></script>
<script>
$(function() {
	$('.container').hide().slideDown(1000);
	$('.avatar').hide().slideDown(1300);
});
</script>
</body>
</html>