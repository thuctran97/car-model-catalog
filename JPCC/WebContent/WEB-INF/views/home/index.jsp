<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.request.contextPath}/">
<meta charset="utf-8">
<title>Japanese Cars Catalog</title>
<script src="js/modernizr.custom.63321.js"></script>
<script src="js/jquery.catslider.js"></script>
<link href="css/catslider.css" rel="stylesheet" />

<!--     special items -->

<style>
.mi-slider {
	height: 250px;

}

.mi-slider ul li img {
	height: 250px;
	max-width: 100%;
}

.nn-box {
	text-align: center;
	font-size: smaller;
}

.nn-box .panel-body img {
	height: 200px;
	max-width: 100%;
}
.nn-box .panel-body {
	background-color: gray;
}
.nn-box .panel-heading {
	font-family: cursive;
	font-size: 20px;
	font-weight: bold;
	color: white;
	background-color: black;
}

#list-title {
	text-align: center;
	font-family: cursive;
	font-size: 25px;
	color: white;
}

#search-title {
	text-align: center;
	color: white;
	font-family: cursive;
	font-size: 20px;
}
#search{
	background-color: black;
}
.home-body {
	background-color: gray;
}
</style>
<script>
	$(function() {
		showCatSlider('.mi-slider', 5000);
	});
</script>
</head>
<body>
	<div class="mi-slider">
		<ul>
			<c:forEach var="p" items="${lex.products}" end="2">
				<li><a href="product/detail/${p.id}.php"> <img
						src="images/details/${p.code}.jpg" />
				</a></li>
			</c:forEach>
		</ul>
		<ul>
			<c:forEach var="p" items="${inf.products}" end="2">
				<li><a href="product/detail/${p.id}.php"> <img
						src="images/details/${p.code}.jpg" />
				</a></li>
			</c:forEach>
		</ul>
		<ul>
			<c:forEach var="p" items="${acu.products}" end="2">
				<li><a href="product/detail/${p.id}.php"> <img
						src="images/details/${p.code}.jpg" />
				</a></li>
			</c:forEach>
		</ul>
	</div>
	
		<h1 id="search-title">Search your favorite cars</h1>
		<div class="panel panel-default">
			<div class="panel-body" id="search">
				<form method="post" action="product/search.php">
					<input value="${param.Keywords}" placeholder="Keywords"
						name="Keywords" class="form-control" />
				</form>
			</div>
		</div>

		<h1 id="list-title">List of most expensive cars</h1>
		<c:forEach var="p" items="${expensive}">
			<div class="col-sm-4 nn-box">
				<div class="panel panel-default">
					<div class="panel-heading">${p.name}</div>
					<div class="panel-body">
						<a href="product/detail/${p.id}.php"> <img
							src="images/details/${p.code}.jpg">
						</a>
					</div>
				</div>
			</div>
		</c:forEach>
</body>
</html>