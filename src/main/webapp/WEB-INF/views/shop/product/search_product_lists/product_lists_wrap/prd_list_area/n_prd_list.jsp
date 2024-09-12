<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<ul class="n_prd_list" id="product_ul">
	<c:if test="${not empty lists}">
		<c:forEach items="${lists}" var="item" varStatus="loop">
		<li>
			<%@ include file="n_prd_list/item.jsp" %>
		</li>
		</c:forEach>
		</c:if>
		<c:if test="${empty lists}">
		<li class="nodata">등록된 정보가 없습니다.</li>
	</c:if>
</ul>