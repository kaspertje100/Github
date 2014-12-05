<%@ page contentType="text/html; charset=UTF-8" %> 
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
			<center><a href='index.jsp'><IMG SRC="LogoPlaintech.png" width="30%"></a></center>
			<!-- Menu -->
			<div id='cssmenu'>
				<ul>
				<li><a href='index.jsp'>Home</a></li>
				<li class='active'><a href='products.jsp'>Products</a></li>
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
		<center>
		At Plaintech we are offering you the best solutions for your own vitual platform!
		</br> We have 3 different service levels. Click on "Sign up" to register immediately..
		</center>
			<div id="container">
				<div class="pricingtable">
					<div class="top">
						<h2>Low</h2>
					</div>
				<ul>
					<li><strong>No</strong> Backup</li>
					<li><strong>Full</strong> Email Support</li>
					<li><strong>25GB</strong> of Storage</li>
					<li><strong>5</strong> Domains</li>
					<li><strong>10</strong> Email Addresses</li>
				</ul>
     
					<hr>
       
				<h1><sup>€</sup>25</h1>
				<p>per month</p>
				<a href="register.jsp">Sign Up</a>
				</div>
     
				<div class="pricingtable featured">
					<div class="top">
						<h2>Medium</h2>
					</div>
				<ul> 
					<li><strong>Daily</strong> Backup</li>
					<li><strong>Full</strong> Email Support</li>
					<li><strong>50GB</strong> of Storage</li>
					<li><strong>10</strong> Domains</li>
					<li><strong>20</strong> Email Addresses</li>
				</ul>
     
					<hr>
       
				<h1><sup>€</sup>49</h1>
				<p>per month</p>
				<a href="register.jsp">Sign Up</a>
				</div>
     
				<div class="pricingtable">
					<div class="top">
						<h2>High</h2>
					</div>
				<ul>
					<li><strong>High</strong> Availability</li>
					<li><strong>Daily</strong> Backup</li>
					<li><strong>Full</strong> Email Support</li>
					<li><strong>Unlimited</strong> Storage</li>
					<li><strong>50</strong> Email Addresses</li>
				</ul>
     
					<hr>
       
				<h1><sup>€</sup>79</h1>
				<p>per month</p>
				<a href="register.jsp">Sign Up</a>
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