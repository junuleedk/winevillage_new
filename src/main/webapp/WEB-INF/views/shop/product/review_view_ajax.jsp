<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<div class="rv_slide" id="rv_slide">
	<c:forEach var="imgSrc" items="${images}">
	<div class="slide" id="img_div">
		<img src="../../uploads/review/${imgSrc}" alt="">
	</div>
	</c:forEach>
</div>
<div class="rv_con">
	<p class="tit"><c:out value="${review.title}" /></p>
	<div class="grade">
		<div class="star_area">
			<span class="full_gold" style="width:${review.star}%"></span>
			<span class="empty"></span>
		</div>
		<p class="date"><fmt:formatDate value="${review.register_date}" pattern="yyyy-MM-dd"/></p>
	</div>
	<div class="txt">
		<c:out value="${review.content}" />
	</div>
</div>