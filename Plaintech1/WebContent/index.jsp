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
	<div class="wrapper">
		<!-- .header-->
		<div class="header">
			<!-- Logo -->
			<center><a href='index.jsp'><IMG SRC="LogoPlaintech.png" width="30%"></a></center>
		
			<!-- Menu -->
			<div id='cssmenu'>
				<ul>
				<li class='active'><a href='index.jsp'>Home</a></li>
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
					<li><a href="logout.jsp">Logout</a></li>  
				<% }  %>
				</ul>				
			</div>
		</div>
	
		<!-- .content -->
		<div class="content">
		<div class="streep">
		</div>
			<div class="blockleft">
				Plaintech UK is an internationally operating organization with its main headquarters in Birmingham (UK). 
				One division of Plaintech is based in the Netherlands to address the Dutch and Scandinavian market. 
				Plaintech has decades of experience in the hosting business. Plaintech has developed new product which 
				can be ordered on this website.
				</br></br>
				
				<center>
				<a href="products.jsp" class="productsbutton">See our products</a>
				</center>
				</br></br>
			</div>
		
			<div class="blockright">
				<ul class="rslides">
					<li><img src="slide1.jpg" alt=""></li>
					<li><img src="slide2.jpg" alt=""></li>
					<li><img src="slide3.jpg" alt=""></li>
					<li><img src="slide4.jpg" alt=""></li>
				</ul>
				
				<script>
					$(function() {
					$(".rslides").responsiveSlides();
					});
				</script>
			</div>
		</div>
		<!-- .footer -->
		<div class="footer">
			<div class="footertekst">&copy; Plaintech - ITopia 2014</div>
		</div>

	</div>

</body>
</html>