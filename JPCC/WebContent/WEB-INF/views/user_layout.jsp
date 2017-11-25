<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.request.contextPath}/">
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Japanese Cars Catalog</title>

<!-- jQuery -->
<script src="js/jquery.min.js"></script>

<!-- jQuery Validation -->
<script src="js/jquery.validate.min.js"></script>

<!-- jQuery UI -->
<link href="css/jquery-ui.min.css" rel="stylesheet" />
<script src="js/jquery-ui.min.js"></script>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet" />

<script src="js/bootstrap.min.js"></script>


<!-- eShop -->
<style type="text/css">
/*--HEADER--*/
.nn-header {
	position: relative;
	height: 200px;
}

.nn-header>img {
	height: 200px;
	max-width: 90%;
}

.nn-company {
	position: absolute;
	bottom: 20px;
	font-variant: small-caps;
}

.nn-company>h1 {
	font-family: Impact;
	font-size: 70px;
	color: white;
	letter-spacing: 0.3px;
	text-shadow: 0 0 2px black;
	padding-bottom: 0px;
	border-bottom: 1px dotted gray;
	margin: 0px;
}

.nn-company>h5 {
	margin-top: 5px;
	letter-spacing: 0.5px;
	color: white;
	font-size: 15px;
}

body {
	background-image: url("images/wallpaper.jpg");
	background-repeat: no-repeat;
	background-position: center;
	background-attachment: fixed;
	background-size: 1250px;
}
.brand-name {
	font-family: cursive;
	font-size: 18px;
}
.category-name{
	font-family: cursive;
	font-size: 15px;

}
.text-center {
	font-size: 27px;
	font-family: cursive;
	color: white;
}

 </style> 

</head>
<body>
	<div class="container">
		<header class="nn-header row">
			<div class="nn-company">
				<h1>Japanese Cars Catalog</h1>
				<h5>The Power Of JDM</h5>
			</div>
			<img class="pull-right"
				src="images/PNGPIX-COM-Nissan-GT-R-NISMO-White-Car-PNG-Image.png" />
		</header>

		<jsp:include page="user/layout/menu.jsp" />

		<div class="nn-sheet row">
		<aside class="col-sm-2">
				<jsp:include page="user/layout/brand.jsp" />
				<jsp:include page="user/layout/category.jsp" />				
			</aside>
			<article class="col-sm-10">
				<div class="nn-body">
					<jsp:include page="${param.view}" />
				</div>
			</article>
		</div>
		<hr>
		<footer class="navbar navbar-inverse row">
				<p class="text-center">Designed by Thuc. 11/2017</p>		
		</footer>
	</div>
</body>
</html>