<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="product_lists_wrap">
	<%@ include file="product_lists_wrap/prd_list_tit.jsp" %>
	<%@ include file="product_lists_wrap/prd_list_area.jsp" %>
	<c:if test="${maps.count > 100}">
	<%@ include file="product_lists_wrap/pagination.jsp" %>
	</c:if>
	<c:if test="${more_btn and maps.count <= 100}">
	<button type="button" class="btn_txt" onclick="getList('add');"><span>더보기</span></button>
	</c:if>
</div>