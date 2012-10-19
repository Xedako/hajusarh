<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="utf-8" />
	<!--[if IE]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
	<title><tiles:insertAttribute name="title" ignore="true" /></title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	
	<!--  script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script -->
	<script type="text/javascript" src="js/jquery-1.6.2.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui-1.8.15.custom.min.js"></script>
	<script type="text/javascript" src="js/jquery.snippet.min.js"></script>
	<script type="text/javascript" src="js/kickstart.js"></script>
	<script type="text/javascript" src="js/jquery.fixheadertable.min.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
	
	<link rel="stylesheet" href="css/start/jquery-ui-1.8.15.custom.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/kickstart.css" type="text/css" media="all" />                  
	<link rel="stylesheet" href="style.css" type="text/css" media="screen, projection" />
	<link rel="stylesheet" href="css/timepicker.css" type="text/css" media="screen, projection" />
	<link rel="stylesheet" href="css/jquery-fixedheader.css" type="text/css" media="screen, projection" />
	
	<!--[if lte IE 6]><link rel="stylesheet" href="static/style_ie.css" type="text/css" media="screen, projection" /><![endif]-->
</head>
<body>
<div id="wrapper">
	<header id="header">
	<tiles:insertAttribute name="header" />
	</header>
	<section id="middle">
		<div id="container">
			<div id="content">
			<tiles:insertAttribute name="content" />
			</div>
		</div>
		<aside id="sideLeft">
		<tiles:insertAttribute name="sideLeft" />
		</aside>
	</section>
	<footer id="footer">
	<tiles:insertAttribute name="footer" />
	</footer>
</div>
</body>
</html>
