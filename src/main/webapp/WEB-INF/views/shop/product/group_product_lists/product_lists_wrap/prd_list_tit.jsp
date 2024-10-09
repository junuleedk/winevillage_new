<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="tab_area mb_hidden">
	<ul class="tab2">
		<li<c:if test="${group_code == '1901'}"> class="on"</c:if>><button type="button" onclick="location.href='/shop/product/group_product_lists.do?group_code=1901'"><span>NEW</span></button></li>
		<li<c:if test="${group_code == '1902'}"> class="on"</c:if>><button type="button" onclick="location.href='/shop/product/group_product_lists.do?group_code=1902'"><span>BEST</span></button></li>
	</ul>
</div>