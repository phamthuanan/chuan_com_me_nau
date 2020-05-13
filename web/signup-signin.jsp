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
                function validate(){
                    var username = document.getElementById("name").value;
                    var pass = document.getElementById("pass").value;
                    if(username == "" && pass == ""){
		    	alert("Vui lòng điền đầy đủ thông tin !");
			return false;
                    }
                    if(username == ""){
			alert("Tên đăng nhập không được bỏ trống");
			return false;
		    }
                    else if(pass == ""){
                        alert("Mật khẩu không được bỏ trống");
                       return false;
                    }
			
                }
            </script>
    </head>
    <body>
        <div class="container" id="container">
            <div class="form-container sign-up-container">
		<form action="UserServlet" method = "POST">
			<h1>Tạo tài khoản</h1>
			<div class="social-container">
				<a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				<a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			</div>
			<span>hoặc sử dụng email để đăng ký</span>
			<input type="text" placeholder="Tên đăng nhập" name="name"/>
			<input type="email" placeholder="Email" name="email"/>
			<input type="password" placeholder="Mật khẩu" name="pass"/>
                        <input type="password" placeholder="Nhập lại mật khẩu" />
                        <input type="text" placeholder="Số điện thoại" name="phone"/>
                        <input type="text" placeholder="Địa chỉ" name="address"/>
			
                        
			<button>Đăng ký</button>
		</form>
	</div>
	<div class="form-container sign-in-container">
           
		<form action="LoginGet">
			<h1>Đăng nhập</h1>
			<div class="social-container">
				<a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				<a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			</div>
			<span>hoặc sử dụng tài khoản của bạn</span>
			<input type="text" placeholder="Tên đăng nhập" name="name" id="name"/>
			<input type="password" placeholder="Mật khẩu" name="pass" id="pass"/>
			<a href="#">Quên mật khẩu?</a>
			<button onclick="validate()">Đăng nhập</button>
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left">
				<h1>Chào mừng bạn đến với Chuẩn cơm mẹ nấu!</h1>
				<p>Bạn đã có tài khoản ? Đăng nhập thôi nào</p>
				<button class="ghost" id="signIn">Đăng nhập</button>
			</div>
			<div class="overlay-panel overlay-right">
				<h1>Xin chào bạn!</h1>
				<p>Đăng ký ngay bạn nhé !</p>
				<button class="ghost" id="signUp">Đăng ký</button>
			</div>
		</div>
	</div>
</div>
        <script src="js/signup-signin.js">
            
        </script>
    </body>
</html>
