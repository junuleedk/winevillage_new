<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="tab_con review_con">
	<div class="ratings_tit">
		<p>${ratingStar} <em>(${reviewCount} ratings)</em></p>
	</div>
	<%@ include file="review_con/tasting_review_lists.jsp" %>
	<div class="btn_area">
		<c:if test="${reviewCount >= 10}"><button type="button" class="btn_txt" onclick="getTastingReview('more')"><span>더보기</span></button></c:if>
		<input type="hidden" id="tasting_page" value="1">
	</div>
</div>