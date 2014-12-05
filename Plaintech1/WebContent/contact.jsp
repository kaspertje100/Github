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
</head>

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
				<li class='active'><a href='contact.jsp'>Contact</a></li>
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
				For all your questions, you can contact us via mail and phone.
				</br>
				</br> Mail: <a href="mailto:info@plaintech.com">info@plaintech.com</a>
				</br> Phone: +31(0)20 182 37 36
				</br></br></br>
				
				Or you can fill in our contact form:
				<center>
				<a href="#" class="productsbutton">Contact form</a>
				</center>
				</br></br>
			</div>
		
			<div class="blockright">
			<center>
			<img src="contact.png" height="58%" width="58%">
			</center>
			</div>
		</div>

		<!-- .footer -->
		<div class="footer">
			<div class="footertekst">&copy; Plaintech - ITopia 2014</div>
		</div>

	</div>

</body>
</html>