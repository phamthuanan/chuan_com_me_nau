<%-- 
    Document   : signup
    Created on : May 13, 2020, 7:34:59 AM
    Author     : Tien Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
        <link rel="stylesheet" href="css/signup-signin.css">
        <title>Đăng nhập - Đăng ký</title>
        <script>
           function validate()
        { 
            var password = document.getElementById("pass").value;
            var confirm= document.getElementById("confirm").value;
     
        if(password.length<6)
        { 
            alert("Mật khẩu phải hơn 6 kí tự."); 
            return false; 
        } 
        else if (password!=confirm)
        { 
            alert("Nhập lại mật khẩu sai"); 
            return false; 
        } 
 } 
</script>
    </head>
    <body>
        <div class="container" id="container">
            <div class="form-container sign-up-container">
		<form action="UserServlet" method = "POST">
			<h1>Đăng ký</h1>
			<div class="social-container">
				<a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				<a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			</div>
			<span>hoặc sử dụng email để đăng ký</span>
                        <input type="text" placeholder="Tên đăng nhập" name="name" required/>
                        <input type="email" placeholder="Email" name="email" required/>
                        <input type="password" placeholder="Mật khẩu" name="pass" id="pass" required/>
                        <input type="password" placeholder="Nhập lại mật khẩu" id="confirm" name="confirm" required />
                        <input type="text" placeholder="Số điện thoại" name="phone" required/>
                        <input type="text" placeholder="Địa chỉ" name="address" required/>
                        
                        <button onclick="validate()" value="insert" name="command" >Đăng ký</button>
		</form>
	</div>
	<div class="form-container sign-in-container">
           
		<form action="UserServlet">
			<h1 style="margin-bottom:10px">Đăng nhập</h1>
			<div class="social-container">
				<a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				<a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			</div>
			<span>hoặc sử dụng tài khoản của bạn</span>
                        <input type="text" placeholder="Tên đăng nhập" name="name" id="name" required/>
                        <input type="password" placeholder="Mật khẩu" name="pass" id="pass" required/>
			<a href="#">Quên mật khẩu?</a>
                        <button value="login" name="command">Đăng nhập</button>
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left">
				<h1>Chào mừng bạn đến với Chuẩn cơm mẹ nấu !</h1>
				<p>Bạn đã có tài khoản ? Đăng nhập thôi nào !</p>
				<button class="ghost" id="signIn">Đăng nhập</button>
			</div>
			<div class="overlay-panel overlay-right">
				<h1>Xin chào bạn!</h1>
				<p>Nếu chưa có tài khoản thì hãy đăng ký ngay nhé !</p>
				<button class="ghost" id="signUp">Đăng ký</button>
			</div>
		</div>
	</div>
</div>
        <script src="js/signup-signin.js">
            
        </script>
    </body>
</html>
