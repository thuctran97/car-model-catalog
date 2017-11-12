<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<div class="panel panel-default">

	<div class="panel-heading">
		<span class="glyphicon glyphicon-list-alt"></span> 
		<strong>Hãng xe</strong>
	</div>

	<div class="list-group">
		<c:forEach var="s" items="${bras}">
		<a href="product/list-by-brand/${s.id}.php" class="list-group-item">${s.name}</a>
	</c:forEach> 
	</div>
</div>