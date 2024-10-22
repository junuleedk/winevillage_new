<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="m_slide">
	<c:forEach items="${event}" var="item" varStatus="loop">
	<a href="<c:url value='/shop/event/event_view.do?no=${item.no}' />">
		<div class="slide">
			<picture>
				<source srcset="../uploads/banner/590/${item.thumbnail_main_pc}" media="(min-width:1024px)">
				<!-- pc이미지 -->
				<source srcset="../uploads/banner/670/${item.thumbnail_main_mb}" media="(max-width:1023px)">
				<!-- mb이미지 -->
				<img data-lazy="../uploads/banner/590/${item.thumbnail_main_pc}" alt="">
				<!-- pc이미지 -->
			</picture>
			<p class="visual_category"></p>
			<div class="visual_txt">
				<p class="tit"></p>
				<p class="sub_txt"></p>
			</div>
		</div>
	</a>
	</c:forEach>
</div>