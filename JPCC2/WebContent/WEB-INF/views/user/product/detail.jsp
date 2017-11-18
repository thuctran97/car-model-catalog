<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Japanese Cars Catalog</title>
<style>
.image {
	width: 150px;
	height: 100px;
	margin: 3px;
	padding: 3px;
	box-shadow: 0 0 5px blue;
	border-radius: 5px;
	/* 	opacity: 1; */
	/* 	display: block; */
	/* 	transition: .5s ease; */
	/* 	backface-visibility: hidden; */
}

/* .middle { */
/* 	transition: .5s ease; */
/* 	opacity: 0; */
/* 	position: absolute; */
/* 	top: 50%; */
/* 	left: 50%; */
/* 	transform: translate(-50%, -50%); */
/* 	-ms-transform: translate(-50%, -50%) */
/* } */
.nn-detail img:hover {
	box-shadow: 0 0 10px red;
	opacity: 0.3;
}

/* .container:hover .middle { */
/* 	opacity: 1; */
/* } */
legend {
	font-family: cursive;
}

/* .text { */
/* 	background-color: #4CAF50; */
/* 	color: white; */
/* 	font-size: 16px; */
/* 	padding: 16px 32px; */
/* } */
.inform{
	background-color: white;

}
.list-detail {
	fort-family: Gadget;
	font-size: 10px;
	top: 20px;
	right: 5px;
}
#car-name{
	font-family: Geneva;
	font-weight: bold;
	font-size: 30px;
}
</style>
</head>
<body>
	<div class="row inform">
		<img class="col-sm-8" src="images/products/${prod.image}">
		<div class="col-sm-4 list-detail">
			<span id="car-name">
				<span>${prod.name}</span>
				<span><img src="images/brands/${prod.brand.logo}" style="width: 35px" height="20px"></span>
			</span>
			<h5>+ Unit Price: ${prod.unitPrice}</h5>
			<h5>+ Discount: ${prod.discount}</h5>
			<h5>+ Category: ${prod.category.name}</h5>
			<h5>+ Brand: ${prod.brand.name}</h5>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12">${prod.description}</div>
	</div>

	
	<div class="row nn-detail inform">
		<fieldset class="col-sm-12">
			<legend>SAME CATEGORY CARS</legend>
			<c:forEach var="p" items="${sameCateItems}">
				<a href="product/detail/${p.id}.php"> <img
					src="images/products/${p.image}" class="image">
				</a>
				<%-- 					<span>${p.name}</span> --%>

			</c:forEach>
		</fieldset>

		<!-- 		<fieldset class="col-sm-12"> -->
		<!-- 			<legend>SAME BRAND CARS</legend> -->
		<%-- 			<c:forEach var="p" items="${sameBranItems}"> --%>
		<%-- 				<a href="product/detail/${p.id}.php"> <img --%>
		<%-- 					src="images/products/${p.image}"> --%>
		<!-- 				</a> -->
		<%-- 			</c:forEach> --%>
		<!-- 		</fieldset> -->
	</div>
</body>
</html>