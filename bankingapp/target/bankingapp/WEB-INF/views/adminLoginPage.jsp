<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
</head>


<style>
body {
	color: white; background-image :
	url("https://img.freepik.com/premium-vector/network-connection-background-abstract-style_23-2148875738.jpg");;
	background-size: cover;
	background-repeat: no-repeat;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
	background-image:
		url("https://img.freepik.com/premium-vector/network-connection-background-abstract-style_23-2148875738.jpg");
}

.container {
	width: 400px;
	padding: 20px;
	/* border: 1px solid #ccc; */
	/* border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); */
}

/* Style the input fields */
.form-control {
	margin-bottom: 15px;
}

/* Style the login button */
.btn-primary {
	color: white;
	background-color: purple;
	border-color: black;
	width: 50%;
	height: 100%;
	background-color: purple;
	border-radius: 10px;
}

/* Change button color on hover */
.btn-primary:hover {
	background-color: green;
	border-color: purple;
}
</style>
</head>
<body>
	<div class="container">
		<form id="loginForm" action="adminLoginProcess" method="POST"
			onsubmit="return validateForm()">
			<h3 class="text-center" mt-10>Admin Login</h3>
			<div class="form-group">
				<label for="exampleInputEmail1">Username</label> <input type="text"
					class="form-control" id="usernameInput"
					aria-describedby="emailHelp" placeholder="Enter Username"
					name="username"> <span id="usernameError"
					style="color: red;"></span>
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Password</label> <input
					type="password" class="form-control" id="passwordInput"
					placeholder="Password" name="password"> <span
					id="passwordError" style="color: red;"></span>
			</div>
			<div class="container text-center">
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
	</script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>
