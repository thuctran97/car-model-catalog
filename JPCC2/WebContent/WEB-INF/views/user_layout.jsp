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
	font-size: 50px;
	color: black;
	letter-spacing: 0.3px;
	text-shadow: 0 0 2px black;
	padding-bottom: 0px;
	border-bottom: 1px dotted gray;
	margin: 0px;
}

.nn-company>h5 {
	margin-top: 5px;
	letter-spacing: 0.5px;
}

body {
	background-image: url("images/b7974d1d8e3883bcc6f19d7b2915f50c--nissan-gtr-nismo-nissan-gtr-skyline.jpg");
	background-repeat: no-repeat;
	background-position: center;
	background-attachment: fixed;
	background-size: 1250px;
	
}
</style>

</head>
<body>
	<!-- background="./images/download.jpg" width="100%" height=500 -->
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



			<aside class="col-sm-3">
				<!-- 		                CartInfo -->
				<%-- 						<jsp:include page="user/layout/myorder-info.jsp"/> --%>
				<!-- 		                /CartInfo -->

				<!--                 Search -->
				<%-- 				<jsp:include page="user/layout/search.jsp"/> --%>
				<!--                 /Search -->

				<!-- 		                Category -->
				<jsp:include page="user/layout/category.jsp" />
				<!-- 		                /Category -->

				<!--                 Supplier -->
				<jsp:include page="user/layout/brand.jsp" />
				<!--                 /Supplier -->

				<!--                 Special -->
				<%-- 				<jsp:include page="user/layout/special.jsp"/> --%>
				<!--                 /Special -->

			</aside>
			<article class="col-sm-9">
				<div class="nn-body">
					<jsp:include page="${param.view}" />
				</div>
			</article>
		</div>

		<footer class="panel panel-default row">
			<div class="panel-heading">
				<p class="text-center">Designed by Thuc</p>
			</div>
		</footer>
	</div>
</body>
</html>