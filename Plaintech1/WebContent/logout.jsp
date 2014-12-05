<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
		href="http://ajax.googleapis.com/ajax/libs/dojo/1.6/dijit/themes/claro/claro.css"
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
				<a href='index.jsp'><IMG SRC="LogoPlaintech.png" width="30%"
					height="30%"></a>
			</center>
<!-- Menu -->
			<div id='cssmenu'>
				<ul>
				<li><a href='index.jsp'>Home</a></li>
				<li><a href='products.jsp'>Products</a></li>
				<li><a href='contact.jsp'>Contact</a></li>
				<li><a href="MyAccount.jsp">Profile</a></li> 
				<% 
                	String username= (String) session.getAttribute("user");                     
                	if (username == null) {
				%> 
				
				<li><a href="login.jsp">Login</a></li>  
				<li><a href="register.jsp">Register</a></li>  
								
				<% } else { %>
					<li class='active'><a href="logout.jsp">Logout</a></li>  
				<% }  %>
				</ul>	
			</div>
		</div>
<%
//allow access only if session exists
if(session.getAttribute("user") == null){
    response.sendRedirect("login.jsp");
}
String userName = null;
String sessionID = null;
Cookie[] cookies = request.getCookies();
if(cookies !=null){
for(Cookie cookie : cookies){
    if(cookie.getName().equals("user")) userName = cookie.getValue();
}
}
%>
	
				<!-- .content -->
		<div class="content">
		<center>
		<h3>Are you sure you want to logout the user <%=userName %>?</h3>
			<body class="claro">
				<div data-dojo-type="dijit/form/Form" id="LogoutServlet"
					action="LogoutServlet" method="post">
					<form action="LogoutServlet" method="post">
							<table>
								<tr>
									<td><button data-dojo-type="dijit/form/Button" type="submit"
										name="submitButton" value="Yes">Yes</button></td>
								</tr>
							</table>
				<div data-dojo-type="dijit/form/Form" id="index.jsp"
					action="index.jsp" method="post">
					<form action="index.jsp" method="post">
							<table>
								<tr>
									<td><button data-dojo-type="dijit/form/Button" type="submit"
										name="submitButton" value="No">No</button></td>
								</tr>
							</table>
					</form>
				</div>
			</body>
			</center>
		</div>
		<!-- .footer -->
		<div class="footer">
			<div class="footertekst">&copy; Plaintech - ITopia 2014</div>
		</div>

	</div>

</body>
</html>