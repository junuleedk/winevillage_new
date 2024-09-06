<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<ul class="n_prd_list" id="product_ul">
	<c:forEach items="${lists}" var="item" varStatus="loop">
	<li>
		<%@ include file="n_prd_list/item.jsp" %>
	</li>
	</c:forEach>
</ul>