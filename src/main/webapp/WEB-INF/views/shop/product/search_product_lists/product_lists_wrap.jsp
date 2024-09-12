<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="product_lists_wrap">
	<div class="line_map mb_hidden">
		<ul>
			<li onclick="location.href='/shop/main'" style="cursor: pointer;">HOME</li>
			<li>검색결과</li>
		</ul>
	</div>
	<div class="tab_area">
	</div>
	<%@ include file="product_lists_wrap/prd_search.jsp" %>
	<%@ include file="product_lists_wrap/prd_list_area.jsp" %>
	<%@ include file="product_lists_wrap/pagination.jsp" %>
	<!-- <button type="button" class="btn_txt" onClick="getList('add');" id="showMoreList">더보기</button> -->
</div>