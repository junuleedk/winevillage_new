<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:forEach var="item" items="${lists}">
<li>
	<div class="top_date">${item.created_date}</div>
	<div class="o_wrap">
		<div class="box con">
			<div class="more_info">
				<p class="prd_name"><a>${item.mileage_name}</a></p>
			</div>
		</div>
		<div class="box mileage">
			<p class="point ${item.points > 0 ? 'plus' : 'minus'}">${item.points > 0 ? '+' : ''}${item.points}</p>
		</div>
	</div>
</li>
</c:forEach>