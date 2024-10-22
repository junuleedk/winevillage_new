<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<c:if test="${not empty reviews}">
<c:forEach var="review" items="${reviews}" varStatus="reviewStatus">
<li>
	<div class="top">
		<div class="box tit">
			<p>${review.title}</p>
		</div>
		<div class="box grade">
			<div class="name">
				<p></p>
				<div class="star_area">
					<!-- 별 한 개당 20% -->
					<span class="full_gold" style="width:${review.star}%"></span>
					<span class="empty"></span>
				</div>
			</div>
			<p class="date"><fmt:formatDate value="${review.register_date}" pattern="yyyy-MM-dd"/></p>
		</div>
	</div>
	<div class="con">
		<div class="box" onclick="reviewImgLayer('${review.no}')" style="cursor: pointer;">${review.content}</div>
		<c:if test="${not empty reviewImgs[review.no]}">
		<div class="box img">
            <ul>
            	<c:forEach var="imgSrc" items="${reviewImgs[review.no]}">
            	<li><button type="button" onclick="reviewImgLayer('${review.no}')"><img src="../../uploads/review/${imgSrc}" alt=""></button></li>	<!-- 실섭 적용시 https://www.winenara.com 제거 -->
            	</c:forEach>
			</ul>
        </div>
        </c:if>
	</div>
</li>
</c:forEach>
</c:if>
<c:if test="${empty reviews and not noMoreList}">
<li class="nodata">작성한 시음노트가 없습니다.</li>
</c:if>
<%-- noMoreList 객체를 부여받으면 빈 내용을 출력 --%>
<c:if test="${noMoreList}"></c:if>