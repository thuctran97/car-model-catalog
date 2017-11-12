<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Japanese Cars Catalog</title>
	<style>
	.nn-detail img{
		width:50px;
		height: 50px;
		margin: 3px;
		padding: 3px;
		box-shadow:0 0 5px blue;
		border-radius:5px;
	}
	.nn-detail img:hover{
		box-shadow:0 0 10px red;
	}
	</style>
</head>
<body>
	<div class="row">
		<img class="col-sm-5" src="images/products/${prod.image}">
		<ul class="col-sm-7">
			<li>Name: ${prod.name}</li>
			<li>Unit Price: ${prod.unitPrice}</li>
			<li>Discount: ${prod.discount}</li>
			<li>Category: ${prod.category.name}</li>
			<li>Brand: ${prod.brand.name}</li>
		</ul>
	</div>
	<div class="row">
		<div class="col-sm-12">${prod.description}</div>
	</div>
	<hr>
	<hr>
	<div class="row nn-detail">
		<fieldset class="col-sm-12">
			<legend>SAME CATEGORY CARS</legend>
			<c:forEach var="p" items="${sameCateItems}">
				<a href="product/detail/${p.id}.php">
					<img src="images/products/${p.image}">
				</a>
			</c:forEach>
		</fieldset>
		
		<fieldset class="col-sm-12">
			<legend>SAME BRAND CARS</legend>
			<c:forEach var="p" items="${sameBranItems}">
				<a href="product/detail/${p.id}.php">
					<img src="images/products/${p.image}">
				</a>
			</c:forEach>
		</fieldset>
	</div>
</body>
</html>