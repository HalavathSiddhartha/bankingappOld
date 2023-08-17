
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-pzjw6f+ua5mz72D9mCBaJPFmB9K0M4LCA6+M5x7GJh1PiIWX8f8V1ZI8Rzo0XaRd"
	crossorigin="anonymous">
<style>
body {
	background-image:
		url("https://img.freepik.com/premium-vector/network-connection-background-abstract-style_23-2148875738.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.container {
	background-color: rgba(255, 255, 255, 0.9);
	border-radius: 10px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	padding: 20px;
	width: 400px;
	text-align: center;
}

.form-control {
	border-radius: 5px;
}

.btn-primary {
	background-color: #8e44ad;
	border: none;
	border-radius: 18px;
	padding: 5px 10px;
	font-size: 10px;
	margin-top: 5px;
	width: 50px;
}

.btn-primary:hover {
	background-color: #6c3483;
}
</style>
</head>
<body>
	<div class="container">
		<form id="loginForm" action="adminLoginProcess" method="POST"
			onsubmit="return validateForm()">
			<h3 class="text-center mt-3">Admin Login</h3>
			<div class="form-group">
				<label for="usernameInput">Username</label> <input type="text"
					class="form-control" id="usernameInput"
					aria-describedby="emailHelp" placeholder="Enter Username"
					name="username"> <small id="usernameError"
					class="form-text text-danger"></small>
			</div>
			<div class="form-group">
				<label for="passwordInput">Password</label> <input type="password"
					class="form-control" id="passwordInput" placeholder="Password"
					name="password">
					<!-- <div class="input-group-append">
						<button class="btn btn-outline-primary toggle-password"
							type="button">Show</button>
					</div> -->
				<small id="passwordError" class="form-text text-danger"></small>
			</div>
			<div class="text-center">
				<button type="submit" class="btn btn-primary">Login</button>
			</div>
		</form>
	</div>
	<script>
		function validateForm() {
			var username = document.getElementById("usernameInput").value;
			var password = document.getElementById("passwordInput").value;
			var usernameError = document.getElementById("usernameError");
			var passwordError = document.getElementById("passwordError");
			var isValid = true;

			usernameError.textContent = "";
			passwordError.textContent = "";

			if (username === "") {
				usernameError.textContent = "Username is required.";
				isValid = false;
			}

			if (password === "") {
				passwordError.textContent = "Password is required.";
				isValid = false;
			}

			return isValid;
		}
		/* document.querySelector('.toggle-password').addEventListener(
				'click',
				function() {
					var passwordInput = document
							.getElementById('passwordInput');
					if (passwordInput.type === 'password') {
						passwordInput.type = 'text';
						this.textContent = 'Hide';
					} else {
						passwordInput.type = 'password';
						this.textContent = 'Show';
					}
				}); */
	</script>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
		integrity="sha384-pzjw6f+ua5mz72D9mCBaJPFmB9K0M4LCA6+M5x7GJh1PiIWX8f8V1ZI8Rzo0XaRd"
		crossorigin="anonymous"></script>
</body>
</html>





