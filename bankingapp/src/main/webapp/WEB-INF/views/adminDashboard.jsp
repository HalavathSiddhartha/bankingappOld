<!DOCTYPE html>
<html>
<head>
<title>Admin Dashboard - Bank Account Management</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f0f0f0;
}

#header {
	background-color: #333;
	color: #fff;
	text-align: center;
	padding: 10px;
}

#container {
	display:flex;
	align-items:center;
	flex-direction:column;
	max-width: 1200px;
	margin: 20px auto;
	background-color: #fff;
	padding: 20px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

ul.menu {
	list-style-type: none;
	margin: 0;
	padding: 0;
}

ul.menu li {
	display: inline;
	margin-right: 15px;
}

ul.menu li a {
	text-decoration: none;
	color: #333;
	font-weight: bold;
}

ul.menu li a:hover {
	color: #0066cc;
}
</style>
</head>
<body>
	<div id="header">
		<h2>Admin Dashboard - Bank Account Management</h2>
	</div>

	<div id="container">
		<ul class="menu">
			<li><a href="newCustomerAccount">Create New Bank Account</a></li>
			<li><a href="#view">View All Bank Accounts</a></li>
			<li><a href="#delete">Delete Bank Account</a></li>
			<li><a href="#update">Update Bank Account</a></li>
		</ul>

	</div>

</body>
</html>
