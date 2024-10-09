<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form action="/shop/product/group_product_lists_ajax.do" id="ListForm" name="ListForm" method="post" accept-charset="utf-8">
	<!-- <input type="hidden" name="witplus_csrf_token" value="85635d9ac6f2ed24a4fc7f7baf52bcba"/> -->
	<input type="hidden" name="page" id="page" value="${maps.page}">
	<input type="hidden" name="mode" id="mode" value="">
	<input type="hidden" name="group_code" id="group_code" value="${group_code}">
	<input type="hidden" name="sort" id="sort" value="${sort}">
</form>