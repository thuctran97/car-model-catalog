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
	background-image: url("images/listbackground.jpg");
	background-position: center;
}

.nn-detail img:hover {
	box-shadow: 0 0 10px red;
	opacity: 0.3;
}

legend {
	font-family: cursive;
	font-weight: bold;
	color: white;
	font-size: 25px;
}



.list-detail {
	fort-family: Gadget;
	font-size: 10px;
	top: 20px;
	right: 5px;
}

#car-name {
	font-family: cursive;
	font-weight: bold;
	font-size: 30px;
	color: white;
}
.car-detail{
	background-color: gray;
	color: white;

}
</style>
</head>
<body>
	
		<span id="car-name"> <span>${prod.name}</span> <span> <img
				src="images/brands/${prod.brand.logo}" style="width: 35px"
				height="25px">
		</span>
		</span>
	<div class="car-detail">
		<div class="row">
			<img class="col-sm-12" src="images/details/${prod.code}.jpg">
		</div>
		<div class="row list-detail">
			<div class="col-sm-6">
				<h5>&emsp; + Starting Price: ${prod.startingPrice}$</h5>
				<h5>&emsp; + Mileage: ${prod.mileage} miles per gallon (combine)</h5>
			</div>
			<div class="col-sm-6">
				<h5>+ Category: ${prod.category.name}</h5>
				<h5>+ Brand: ${prod.brand.name}</h5>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">&emsp;  Click here to see more about this car:
				${prod.description}</div>
		</div>
	</div>
	<hr>

	<div class="row nn-detail inform">
		<fieldset class="col-sm-12">
			<legend>See more ${prod.brand.name} cars</legend>
			<c:forEach var="p" items="${sameBranItems}">
				<a href="product/detail/${p.id}.php"> <img
					src="images/products/${p.image}" class="image">
				</a>
			</c:forEach>
			<hr>
		</fieldset>
	</div>
</body>
</html>