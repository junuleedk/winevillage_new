<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form id="listFrm" name="listFrm" method="GET" action="/shop/product/product_lists.do">
	<!-- 서버 측에서 value를 받아와야 함 -->
	<input type="hidden" name="category" id="category" value="${category}">
	<input type="hidden" name="category_type" id="category_type" value="${category_type}">
	<input type="hidden" name="category_country" id="category_country" value="${category_country}">
	<input type="hidden" name="classified" id="classified" value="${classified}">
	<input type="hidden" name="sort" id="sort">
	<input type="hidden" name="sh_filter_code" id="sh_filter_code" value="">
	<input type="hidden" name="list_count" id="list_count" value="${list_count}">
</form>