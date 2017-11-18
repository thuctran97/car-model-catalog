<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div class="panel panel-default">

	<div class="panel-heading">
		<span class="glyphicon glyphicon-list"></span> <strong>Hãng
			xe</strong>
	</div>

	<div class="list-group">
		<c:forEach var="s" items="${bras}">
			<a href="product/list-by-brand/${s.id}.php" class="list-group-item">
				<span class="media"> <span class="media-left"> <img
						class="media-object" src="images/brands/${s.logo}"
						style="width: 40px" height="25px">
				</span> <span class="media-body brand-name"> ${s.name} </span>
			</span>
			</a>
		</c:forEach>
	</div>
	
</div>