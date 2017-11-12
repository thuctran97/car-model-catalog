<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Japanese Cars Catalog</title>
<style type="text/css">
.nn-box {
	text-align: center;
	font-size: smaller;
}

.nn-box .panel-body img {
	height: 150px;
	max-width: 100%;
}

.nn-box  .pull-left {
	font-family: Impact;
	font-size: 20px;
	color: darkgray;
}

.nn-box .panel-footer .row {
	padding: 0 5px;
}
</style>
</head>
<body>
	<c:forEach var="p" items="${prods}">
		<div class="col-sm-4 nn-box">
			<div class="panel panel-default">
				<div class="panel-hedding">${p.name}</div>
				<div class="panel-body">
					<a href="product/detail/${p.id}.php"> <img
						src="images/products/${p.image}">
					</a>
				</div>
				<div class="panel-footer">
					<div class="row">
						<div class="pull-left">${p.unitPrice}</div>
						<div class="pull-right">
							<button class="btn btn-sm btn-primary">
								<span class="glyphicon glyphicon-shopping-cart"></span>
							</button>
							<button class="btn btn-sm btn-danger">
								<span class="glyphicon glyphicon-envelope"></span>
							</button>
							<button class="btn btn-sm btn-warning">
								<span class="glyphicon glyphicon-heart"></span>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>
</body>
</html>