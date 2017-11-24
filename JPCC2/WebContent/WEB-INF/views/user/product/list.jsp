<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.request.contextPath}/" />
<meta charset="utf-8">
<title>Japanese Cars Catalog</title>
<style type="text/css">
.nn-box {
	text-align: center;
	font-size: smaller;
	
}

.nn-box .panel-body img {
	height: 145px;
	max-width: 100%;
}

.nn-box .panel-heading {
	font-family: Impact;
	font-size: 20px;
}
.panel-body{
	background-image: url("images/listbackground.jpg");
}
</style>
</head>
<body>
	<c:forEach var="p" items="${prods}">
		<div class="col-sm-4 nn-box">
			<div class="panel panel-default">
				<div class="panel-heading">${p.name}</div>
				<div class="panel-body">
					<a href="product/detail/${p.id}.php"> <img
						src="images/products/${p.image}">
					</a>
				</div>
			</div>
		</div>
	</c:forEach>
</body>
</html>