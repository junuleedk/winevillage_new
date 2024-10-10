<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<ul class="n_prd_list" id="product_ul">
	<%-- <c:if test="${not empty magazine_product}"> --%>
	<c:forEach items="${related_product}" var="item" varStatus="loop">
	<li>
		<%@ include file="n_prd_list/item.jsp" %>
	</li>
	</c:forEach>
	<%-- </c:if> --%>
	<%-- <c:if test="${empty magazine_product}">
	<li class="nodata">등록된 정보가 없습니다.</li>
	</c:if> --%>
</ul>