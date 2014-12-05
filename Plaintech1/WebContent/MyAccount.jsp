<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
	<title></title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link href="style.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Ubuntu' rel='stylesheet' type='text/css'>
	<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
	<script src="menuscript.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script src="responsiveslides.min.js"></script>
</head>

<body>
<%
//allow access only if session exists
String user = null;
if(session.getAttribute("user") == null){
    response.sendRedirect("login.jsp");
}else user = (String) session.getAttribute("user");
String userName = null;
String sessionID = null;
Cookie[] cookies = request.getCookies();
if(cookies !=null){
for(Cookie cookie : cookies){
    if(cookie.getName().equals("user")) userName = cookie.getValue();
    if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();
}
}
%>

	<div class="wrapper">
		<!-- .header-->
		<div class="header">
			<!-- Logo -->
			<center><a href='index.jsp'><IMG SRC="LogoPlaintech.png" width="30%"></a></center>
			<!-- Menu -->
			<div id='cssmenu'>
				<ul>
				<li><a href='index.jsp'>Home</a></li>
				<li><a href='products.jsp'>Products</a></li>
				<li><a href='contact.jsp'>Contact</a></li>
				<li class='active'><a href="MyAccount.jsp">Profile</a></li> 
				<% 
                	String username= (String) session.getAttribute("user");                     
                	if (username == null) {
				%> 
				
				<li><a href="login.jsp">Login</a></li>  
				<li><a href="register.jsp">Register</a></li>  
								
				<% } else { %>
					<li><a href="logout.jsp">Logout</a></li>  
				<% }  %>
				</ul>	
			</div>
		</div>
		
		<!-- .content -->
		<div class="content">
		<center>
<h3>Hi <%=userName %>, Login successful. Your Session ID=<%=sessionID %></h3>
		</center>
		</div>
		
			
	<!-- .footer -->
		<div class="footer">
			<div class="footertekst">&copy; Plaintech - ITopia 2014</div>
		</div>

	</div>

</body>
</html>