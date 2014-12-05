<!DOCTYPE html>
<html>
<header>
	<meta charset="utf-8" />
	<!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
	<title></title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link href="style.css" rel="stylesheet">
	<link
		href="http://ajax.googleapis.com/ajax/libs/dojo/1.6/dijit/themes/claro/claro.css"
		rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Ubuntu'
		rel='stylesheet' type='text/css'>
	<script src="http://code.jquery.com/jquery-latest.min.js"
		type="text/javascript"></script>
	<script src="menuscript.js"></script>
	<link
		href="http://ajax.googleapis.com/ajax/libs/dojo/1.10.1/dijit/themes/claro/claro.css"
		rel="stylesheet">

	<script>
		dojoConfig = {
			parseOnLoad : true
		}
	</script>
	<script
		src="http://ajax.googleapis.com/ajax/libs/dojo/1.10.1/dojo/dojo.js"></script>
	<script>
		dojo.require("dojox.form.PasswordValidator");
	</script>
	<script>
		require([ "dojo/parser", "dijit/form/Form", "dijit/form/Button",
				"dijit/form/ValidationTextBox", "dijit/form/DateTextBox",
				"dijit/form/TextBox" ]);
	</script>
</header>
<body>
	<div class="wrapper">
		<!-- .header-->
		<div class="header">
			<!-- Logo -->
			<center>
				<a href='index.jsp'><IMG SRC="LogoPlaintech.png" width="30%"></a>
			</center>

			<!-- Menu -->
			<div id='cssmenu'>
				<ul>
					<li><a href='index.jsp'>Home</a></li>
					<li><a href='products.jsp'>Products</a></li>
					<li><a href='contact.jsp'>Contact</a></li>
					<li><a href="MyAccount.jsp">Profile</a></li>
					<%
						String username = (String) session.getAttribute("user");
						if (username == null) {
					%>

					<li><a href="login.jsp">Login</a></li>
					<li class='active'><a href="register.jsp">Register</a></li>

					<%
						} else {
					%>
					<li><a href="logout.jsp">Logout</a></li>
					<%
						}
					%>
				</ul>
			</div>
		</div>

		<!-- .content -->
		<div class="content">
			<body class="claro">
				<div data-dojo-type="dijit/form/Form" action="registrationServlet"
					method="post">
					<table data-dojo-type="dojox.form.PasswordValidator"
						name="password">
						* is optional
						<tr>
							<td><label for="name">Username:</label></td>
							<td><input type="text" name="loginusername" required="true"
								data-dojo-type="dijit/form/TextBox" /></td>
						</tr>
			
						<tr>
							<td><label>Password:</label></td>
							<td><input type="password" pwType="new" required="true"
								data-dojo-type="dijit/form/TextBox" /></td>
							</td>
						</tr>

						<tr>
							<td><label>Confirm password:</label></td>
							<td><input type="password" pwType="verify"
								name="confirmpassword" /></td>
						</tr>

						<tr>
							<td><label for="fullname">Fullname:</label></td>
							<td><input type="text" name="fullName" required="true"
								data-dojo-type="dijit/form/TextBox" /></td>
						</tr>

						<tr>
							<td><label for="name">Email address:</label></td>
							<td><input type="text" name="email"
								data-dojo-type="dijit.form.ValidationTextBox"
								regExp="\b[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}\b"
								, required="true" , invalidMessage="Invalid Email Address.">
						</tr>

						<tr>
							<td><label for="dateofbirth"> Date of birth:</label></td>
							<td><input type="text" name="dateOfBirth" required="true"
								data-dojo-type="dijit/form/DateTextBox" /></td>
						</tr>

						<tr>
							<td><label for="phonenumber">Phonenumber:</label></td>
							<td><input type="text" name="phoneNumber" required="true"
								data-dojo-type="dijit.form.ValidationTextBox"
								regExp="[0-9]{10,14}" /></td>
						</tr>

						<tr>
							<td><label for="companyName"> * Company name:</label></td>
							<td><input type="text" name="companyName"
								data-dojo-type="dijit/form/TextBox" /></td>
						</tr>

						<tr>
							<td><label for="companyEmail">* Company email
									address:</label></td>
							<td><input type="text" name="companyEmail"
								data-dojo-type="dijit.form.ValidationTextBox"
								regExp="\b[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}\b">
						</tr>

						<tr>
							<td><label for="payment"> Payment:</label></td>
							<td><select name="paymentMethod"
								data-dojo-type="dijit/form/Select">
									<option value="ideal">Ideal</option>
									<option value="creditcard" selected="selected">Creditcard</option>
							</select></td>
						</tr>

					</table>
					<hr>
					<button data-dojo-type="dijit/form/Button" type="submit"
						name="submitButton" value="Submit">Register</button>
			</body>
		</div>
	</div>
	</div>
	<!-- .footer -->
	<div class="footer">
		<div class="footertekst">&copy; Plaintech - ITopia 2014</div>
	</div>

	</div>

</body>
</html>