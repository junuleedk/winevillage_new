<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="prd_search">
	<div class="search_info">
		<h2>'${keyword}'</h2>
		<p>검색어로 총 <span class="total_count_text">${maps.count}</span>개의 상품검색</p>
	</div>
	<form action="/shop/product/search_product_lists.do" id="searchForm" method="get">
		<div class="search_box">
			<input type="text" name="keyword" placeholder='검색어를 입력해주세요.'>
			<button type="submit"><span>검색</span></button>
		</div>
	</form>
</div>