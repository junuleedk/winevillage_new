<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="section news_area newarrivals sub_tit_wrap">
	<h2>OUR STORIES</h2>
	<!-- OUR STORIES -->
	<span class="sub_tit">알고마시면 더욱 흥미로운 와인세계로 빠져보세요.</span>
	<a href="/shop/community/magazine_con_lists.do" class="btn_more"><span>더보기</span></a>
	<c:if test="${not empty magazineCon}">
	<div class="n_slide">
		<c:forEach items="${magazineCon}" var="item" varStatus="loop">
		<div class="silde">
			<a href="/shop/community/magazine_con_view.do?seq=${item.seq}">
				<div class="img">
					<picture>
						<!--[if IE 9]><video style="display: none;"><![endif]-->
						<source srcset="../uploads/magazine_con/${item.thumbnail}" media="(min-width:1024px)">
						<!-- pc이미지 -->
						<source srcset="../uploads/magazine_con/${item.thumbnail}" media="(max-width:1023px)">
						<!-- mb이미지 -->
						<!--[if IE 9]></video><![endif]-->
						<img src="uploads/magazine_con/${item.thumbnail}" loading="lazy" alt="">
						<!-- pc이미지 -->
					</picture>
				</div>
				<p>${item.series}<br>${item.title}</p>
			</a>
		</div>
		</c:forEach>
	</div>
	</c:if>
	<c:if test="${empty magazineCon}">
	<div class="nodata">등록된 정보가 없습니다.</div>
	</c:if>
	<!-- <div class="btn_area">
           <button type="button" onclick="location.href='/shop/community/magazine_con_lists'" class="btn_txt"><span>더보기</span></button>
       </div> -->
</div>