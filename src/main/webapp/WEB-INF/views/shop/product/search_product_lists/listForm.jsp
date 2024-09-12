<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form action="/shop/product/search_product_lists.do" id="ListForm" name="ListForm" method="get" accept-charset="utf-8">
	<!-- <input type="hidden" name="witplus_csrf_token" value="85635d9ac6f2ed24a4fc7f7baf52bcba"/> -->
	<input type="hidden" name="page" id="page" value="">
	<input type="hidden" name="mode" id="mode" value="">
	<input type="hidden" name="keyword" id="keyword" value="${keyword}">
	<input type="hidden" name="sort" id="sort" value="${sort}">
</form>