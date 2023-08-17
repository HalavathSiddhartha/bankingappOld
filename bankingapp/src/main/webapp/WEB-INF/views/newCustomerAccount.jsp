<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create New Bank Account</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-pzjw6f+ua5mz72D9mCBaJPFmB9K0M4LCA6+M5x7GJh1PiIWX8f8V1ZI8Rzo0XaRd"
	crossorigin="anonymous">
<style>
body {
	background-color: #f8f9fa;
}

.container {
	display: flex;
	justify-content: center;
	align-items: center;
	text-align: center;
	flex-direction: column;
	align-items: center;
	height: 100vh;
}

.form-container {
	background-color: #ffffff;
	border-radius: 5px;
	box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
	padding: 30px;
	width: 400px;
}

.form-group label {
	font-weight: bold;
}

.btn-primary {
	background-color: #007bff;
	border-color: #007bff;
	width: 100%;
	border-radius: 5px;
}

.btn-primary:hover {
	background-color: #0056b3;
	border-color: #0056b3;
}
</style>
</head>
<body>
	<div class="container">
		<div class="form-container">
			<h3 class="mb-4 text-center">Create New Bank Account</h3>
			<form action="processNewAccount" method="POST" id="accountForm">
				<div class="form-group">
					<label for="fullName">Full Name : </label> <input type="text"
						class="form-control" id="fullName" name="fullName">
				</div>
				<div class="form-group">
					<label for="address">Address : </label>
					<textarea class="form-control" id="address" name="address" rows="3"></textarea>
				</div>
				<div class="form-group">
					<label for="mobileNo">Mobile No : </label> <input type="tel"
						class="form-control" id="mobileNo" name="mobileNo">
				</div>
				<div class="form-group">
					<label for="email">Email Id : </label> <input type="email"
						class="form-control" id="email" name="email">
				</div>
				<div class="form-group">
					<label for="accountType">Type of Account : </label> <select
						class="form-control" id="accountType" name="accountType">
						<option value="savings">Savings</option>
						<option value="current">Current</option>
					</select>
				</div>
				<div class="form-group">
					<label for="initialBalance">Initial Balance : </label><input
						type="text" class="form-control" id="balance"
						name="initialBalance">
				</div>
				<button type="submit" class="btn btn-primary">Create
					Account</button>
			</form>
		</div>
	</div>
	<script>
		document.getElementById("accountForm").onsubmit = function() {
			return validateForm();
		};

		function validateForm() {
			var fullName = document.getElementById("fullName").value;
			var address = document.getElementById("address").value;
			var mobileNo = document.getElementById("mobileNo").value;
			var email = document.getElementById("email").value;
			var accountType = document.getElementById("accountType").value;
			var initialBalance = document.getElementById("balance").value;

			var fullNameError = document.getElementById("fullNameError");
			var addressError = document.getElementById("addressError");
			var mobileNoError = document.getElementById("mobileNoError");
			var emailError = document.getElementById("emailError");
			var accountTypeError = document.getElementById("accountTypeError");
			var initialBalanceError = document
					.getElementById("initialBalanceError");
			fullNameError.textContent = "";
			addressError.textContent = "";
			mobileNoError.textContent = "";
			emailError.textContent = "";
			accountTypeError.textContent = "";
			initialBalanceError.textContent = "";

			var isValid = true;

			if (fullName === "") {
				fullNameError.textContent = "Full Name is required.";
				isValid = false;
			}

			if (address === "") {
				addressError.textContent = "Address is required.";
				isValid = false;
			}

			if (mobileNo === "") {
				mobileNoError.textContent = "Mobile No is required.";
				isValid = false;
			}

			if (!/^\d{10}$/.test(mobileNo)) {
				mobileNoError.textContent = "Mobile No must be a valid 10-digit number.";
				isValid = false;
			}

			if (email === "") {
				emailError.textContent = "Email ID is required.";
				isValid = false;
			} else if (!/\S+@\S+\.\S+/.test(email)) {
				emailError.textContent = "Enter a valid email address.";
				isValid = false;
			}

			if (accountType === "") {
				accountTypeError.textContent = "Select an account type.";
				isValid = false;
			}
			if (initialBalance === "") {
				initialBalanceError.textContent = "Initial Balance is required.";
				isValid = false;
			} else if (parseFloat(initialBalance) < 0) {
				initialBalanceError.textContent = "Initial Balance must be non-negative.";
				isValid = false;
			}

			return isValid;
			// Your validation logic here
			// Return true if valid, false if not
		}
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
