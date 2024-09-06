<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINEVILLAGE 2024 ㅣ Shop</title>
<%@ include file="../common/common.jsp" %>
</head>
<body>
<!-- skip_menu -->
<div class="skip_menu" id="skip_menu">
	<ul>
		<li><a href="#header">메인메뉴 바로가기</a></li>
		<li><a href="#contents">본문 바로가기</a></li>
		<li><a href="#footer">하단메뉴 바로가기</a></li>
	</ul>
</div>
<!-- //skip_menu -->

<sec:authorize access="!isAuthenticated()">
<!-- header -->
<%@ include file="../common/header.jsp" %>
<!-- //header -->
</sec:authorize>
<sec:authorize access="isAuthenticated()">
<!-- header - 로그인 상태 -->
<%@ include file="../common/header_loggedin.jsp" %>
<!-- //header - 로그인 상태 -->
</sec:authorize>
<%@ include file="../common/layer.jsp" %>
<%@ include file="../common/script.jsp" %>

<!-- contents -->
<section id="contents" style="margin-top: 188px;">
	<div class="lnb comm_lnb bg_lnb company_lnb lnb_wrap">
		<div class="pc_hidden">
			<a href="javascript:history.go(-1);" class="prev">이전</a>
			<div class="select_brand js_select" id="select_brand">
				<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>Shop</span></button>
				<ul class="mb_lnb_lists">
					<li><a href="/shop/company/about_us">WineVillage</a></li>
					<li><a href="/shop/company/brand">Brands</a></li>
					<li><a href="/shop/company/fnb">F&amp;B</a></li>
					<li><a href="/shop/community/press_lists">Press</a></li>
					<li><a href="/shop/company/member_benefit">Membership</a></li>
				</ul>
			</div>
		</div>
		<div class="pc_lnb mb_hidden">
			<div class="page_tit">
				<h2><span>Shop</span></h2>
			</div>
			<ul class="menu">
				<li><a href="/shop/company/about_us"><span>WineVillage</span></a></li>
				<li><a href="/shop/company/brand"><span>Brands</span></a></li>
				<li class="on"><a href="/shop/company/store"><span>Shop</span></a></li>
				<li><a href="/shop/company/fnb"><span>F&amp;B</span></a></li>
				<li><a href="/shop/community/press_lists"><span>Press</span></a></li>
				<li><a href="/shop/company/member_benefit"><span>Membership</span></a></li>
			</ul>
		</div>
	</div>
	<div class="wrap">
		<div class="content cs store_page">
			<div class="mb_page_tit">
				<div class="img">
					<img src="../../asset/images/shop/company/mb_page_tit_store.png" alt="">
				</div>
				<h2><span>SHOP</span></h2>
			</div>
			<div class="inner">
				<div class="con_top">
					<h3>와인나라 매장안내</h3>
					<!-- <span>와인이 필요한 순간에, <br class="pc_hidden">가장 가까운 와인나라 매장을 찾아주세요!<br>11개 직영매장 () 및 입점매장으로 운영됩니다.</span> -->
					<span>와인이 필요한 순간, 가장 가까운 와인나라 매장을 찾아주세요!</span>
				</div>
				<div class="store_map">
					<div class="map">
						<div id="map" style="position: relative; overflow: hidden; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/bg_tile.png&quot;);">
							<div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; touch-action: none; cursor: url(&quot;https://t1.daumcdn.net/mapjsapi/images/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;https://t1.daumcdn.net/mapjsapi/images/cursor/openhand.cur.ico&quot;), default;">
								<div style="position: absolute;">
									<div style="position: absolute; z-index: 0;"></div>
									<div style="position: absolute; z-index: 1; left: 0px; top: 0px;">
										<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v22_ke29h/7/122/53.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -126px; top: 418px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v22_ke29h/7/122/54.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 130px; top: 418px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v22_ke29h/7/122/55.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 386px; top: 418px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v22_ke29h/7/122/56.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 642px; top: 418px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v22_ke29h/7/122/57.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 898px; top: 418px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v22_ke29h/7/122/58.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1154px; top: 418px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v22_ke29h/7/123/53.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -126px; top: 162px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v22_ke29h/7/123/54.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 130px; top: 162px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v22_ke29h/7/123/55.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 386px; top: 162px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v22_ke29h/7/123/56.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 642px; top: 162px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v22_ke29h/7/123/57.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 898px; top: 162px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v22_ke29h/7/123/58.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1154px; top: 162px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v22_ke29h/7/124/53.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -126px; top: -94px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v22_ke29h/7/124/54.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 130px; top: -94px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v22_ke29h/7/124/55.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 386px; top: -94px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v22_ke29h/7/124/56.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 642px; top: -94px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v22_ke29h/7/124/57.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 898px; top: -94px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v22_ke29h/7/124/58.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1154px; top: -94px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v22_ke29h/7/125/53.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -126px; top: -350px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v22_ke29h/7/125/54.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 130px; top: -350px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v22_ke29h/7/125/55.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 386px; top: -350px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v22_ke29h/7/125/56.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 642px; top: -350px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v22_ke29h/7/125/57.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 898px; top: -350px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v22_ke29h/7/125/58.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1154px; top: -350px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
									</div>
									<div style="position: absolute; z-index: 1;"></div>
									<div style="width: 1200px; height: 525px; position: absolute; z-index: 1;"></div>
									<div style="position: absolute; z-index: 1;">
										<svg version="1.1" style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; width: 6000px; height: 2625px; left: -2400px; top: -1050px;" viewbox="0 0 6000 2625"><defs></defs></svg>
									</div>
									<div style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);">
										<div style="position: absolute; margin: -35px 0px 0px -12px; z-index: 0; left: -1280px; top: 1104px; display: none;">
											<img draggable="false" src="https://www.winenara.com/asset/images/shop/company/ico_marker.png" alt="" role="presentation" title="송도점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 25px, 36px, 0px); top: 0px; left: 0px; width: 25px; height: 36px;">
										</div>
										<div style="position: absolute; margin: -35px 0px 0px -12px; z-index: 0; left: 507px; top: 175px;">
											<img draggable="false" src="https://www.winenara.com/asset/images/shop/company/ico_marker.png" alt="" role="presentation" title="신용산점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 25px, 36px, 0px); top: 0px; left: 0px; width: 25px; height: 36px;">
										</div>
										<div style="position: absolute; margin: -35px 0px 0px -12px; z-index: 0; left: 834px; top: 192px;">
											<img draggable="false" src="https://www.winenara.com/asset/images/shop/company/ico_marker.png" alt="" role="presentation" title="압구정점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 25px, 36px, 0px); top: 0px; left: 0px; width: 25px; height: 36px;">
										</div>
										<div style="position: absolute; margin: -35px 0px 0px -12px; z-index: 0; left: 525px; top: -116px; display: none;">
											<img draggable="false" src="https://www.winenara.com/asset/images/shop/company/ico_marker.png" alt="" role="presentation" title="경희궁점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 25px, 36px, 0px); top: 0px; left: 0px; width: 25px; height: 36px;">
										</div>
										<div style="position: absolute; margin: -35px 0px 0px -12px; z-index: 0; left: 997px; top: 287px;">
											<img draggable="false" src="https://www.winenara.com/asset/images/shop/company/ico_marker.png" alt="" role="presentation" title="코엑스점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 25px, 36px, 0px); top: 0px; left: 0px; width: 25px; height: 36px;">
										</div>
										<div style="position: absolute; margin: -35px 0px 0px -12px; z-index: 0; left: 673px; top: 384px;">
											<img draggable="false" src="https://www.winenara.com/asset/images/shop/company/ico_marker.png" alt="" role="presentation" title="서래마을점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 25px, 36px, 0px); top: 0px; left: 0px; width: 25px; height: 36px;">
										</div>
										<div style="position: absolute; margin: -35px 0px 0px -12px; z-index: 0; left: -653px; top: -1019px; display: none;">
											<img draggable="false" src="https://www.winenara.com/asset/images/shop/company/ico_marker.png" alt="" role="presentation" title="일산점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 25px, 36px, 0px); top: 0px; left: 0px; width: 25px; height: 36px;">
										</div>
										<div style="position: absolute; margin: -35px 0px 0px -12px; z-index: 0; left: 235px; top: 1px;">
											<img draggable="false" src="https://www.winenara.com/asset/images/shop/company/ico_marker.png" alt="" role="presentation" title="홍대점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 25px, 36px, 0px); top: 0px; left: 0px; width: 25px; height: 36px;">
										</div>
										<div style="position: absolute; margin: -35px 0px 0px -12px; z-index: 0; left: 542px; top: -52px; display: none;">
											<img draggable="false" src="https://www.winenara.com/asset/images/shop/company/ico_marker.png" alt="" role="presentation" title="시청점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 25px, 36px, 0px); top: 0px; left: 0px; width: 25px; height: 36px;">
										</div>
										<div style="position: absolute; margin: -35px 0px 0px -12px; z-index: 0; left: 938px; top: 72px;">
											<img draggable="false" src="https://www.winenara.com/asset/images/shop/company/ico_marker.png" alt="" role="presentation" title="성수점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 25px, 36px, 0px); top: 0px; left: 0px; width: 25px; height: 36px;">
										</div>
										<div style="position: absolute; margin: -35px 0px 0px -12px; z-index: 0; left: 264037px; top: -372087px; display: none;">
											<img draggable="false" src="https://www.winenara.com/asset/images/shop/company/ico_marker.png" alt="" role="presentation" title="MOWa" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 25px, 36px, 0px); top: 0px; left: 0px; width: 25px; height: 36px;">
										</div>
									</div>
								</div>
							</div>
							<div style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);">
								<div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left;">
									<div style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 58px;">
									</div>
									<div style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">
										1km
									</div>
								</div>
								<div style="margin: 0px 4px; float: left;">
									<a target="_blank" href="http://map.kakao.com/" title="Kakao 지도로 보시려면 클릭하세요." style="float: left; width: 32px; height: 10px;"><img src="https://t1.daumcdn.net/mapjsapi/images/m_bi_b.png" alt="Kakao 지도로 이동" style="float: left; width: 32px; height: 10px; border: none;"></a>
									<div style="font: 11px / 11px Arial, Tahoma, Dotum, sans-serif; float: left;">
									</div>
								</div>
							</div>
							<div style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"></div>
						</div>
					</div>
					<!-- <div class="search_store">
						<!-- <select name="" id="">
							<option value="">매장명</option>
							<option value="">매장명</option>
							<option value="">매장명</option>
						</select> - ->
						<input type="text" name="store_keyword" id="store_keyword" placeholder="검색어를 입력해주세요">
						<button type="button">검색하기</button>
					</div> -->
				</div>
				<div class="store_list">
					<ul id="store_ul">
						<li>
							<div class="img">
								<a href="/shop/company/store_view?no=95">
									<!-- //기존 슬라이드 이미지 <img src="../../uploads/sale_company/5178b4058e9ca2c3fa4f0672a07682d8.jpg" alt=""> -->
										<picture>
										<!--[if IE 9]><video style="display: none;"><![endif]-->
										<source srcset="../../uploads/sale_company/cc71d15c9e80fa92d2566ee2c635b243.jpg" media="(min-width:768px)">
										<!-- pc이미지 -->
										<source srcset="../../uploads/sale_company/cc71d15c9e80fa92d2566ee2c635b243.jpg" media="(max-width:767px)">
										<!-- mb이미지 -->
										<!--[if IE 9]></video><![endif]-->
										<img src="../../uploads/sale_company/cc71d15c9e80fa92d2566ee2c635b243.jpg" alt="">
										<!-- pc이미지 -->
									</picture>
								</a>
							</div>
							<div class="con">
								<p class="tit">
									<a href="/shop/company/store_view?no=95">송도점</a>
								</p>
								<p class="tel">
									<a href="tel:032-833-0833">032-833-0833</a>
								</p>
								<p class="addr">
									인천 연수구 해돋이로 157,&nbsp;1층 (송도동, 백제원도쿄풀사이드)
								</p>
							</div>
						</li>
						<li>
							<div class="img">
								<a href="/shop/company/store_view?no=88">
									<!-- //기존 슬라이드 이미지 <img src="../../uploads/sale_company/5178b4058e9ca2c3fa4f0672a07682d8.jpg" alt=""> -->
									<picture>
									<!--[if IE 9]><video style="display: none;"><![endif]-->
									<source srcset="../../uploads/sale_company/154bc269de835f75b659843cee2e438d.jpg" media="(min-width:768px)">
									<!-- pc이미지 -->
									<source srcset="../../uploads/sale_company/154bc269de835f75b659843cee2e438d.jpg" media="(max-width:767px)">
									<!-- mb이미지 -->
									<!--[if IE 9]></video><![endif]-->
									<img src="../../uploads/sale_company/154bc269de835f75b659843cee2e438d.jpg" alt="">
									<!-- pc이미지 -->
								</picture>
								</a>
							</div>
							<div class="con">
								<p class="tit">
									<a href="/shop/company/store_view?no=88">신용산점</a>
								</p>
								<p class="tel">
									<a href="tel:02-6328-3835">02-6328-3835</a>
								</p>
								<p class="addr">
									서울 용산구 한강대로 100,&nbsp;지하1층 지하106-3호(한강로2가, 아모레퍼시픽)
								</p>
							</div>
						</li>
						<li>
							<div class="img">
								<a href="/shop/company/store_view?no=87">
									<!-- //기존 슬라이드 이미지 <img src="../../uploads/sale_company/5178b4058e9ca2c3fa4f0672a07682d8.jpg" alt=""> -->
									<picture>
										<!--[if IE 9]><video style="display: none;"><![endif]-->
										<source srcset="../../uploads/sale_company/57bc5de23b6b125c12bd8a4d51135619.jpg" media="(min-width:768px)">
										<!-- pc이미지 -->
										<source srcset="../../uploads/sale_company/57bc5de23b6b125c12bd8a4d51135619.jpg" media="(max-width:767px)">
										<!-- mb이미지 -->
										<!--[if IE 9]></video><![endif]-->
										<img src="../../uploads/sale_company/57bc5de23b6b125c12bd8a4d51135619.jpg" alt="">
										<!-- pc이미지 -->
									</picture>
								</a>
							</div>
							<div class="con">
								<p class="tit">
									<a href="/shop/company/store_view?no=87">압구정점</a>
								</p>
								<p class="tel">
									<a href="tel:02-541-4363">02-541-4363</a>
								</p>
								<p class="addr">
									서울 강남구 논현로175길 6,&nbsp;1층, 2층 일부 에이호
								</p>
							</div>
						</li>
						<li>
							<div class="img">
								<a href="/shop/company/store_view?no=43">
									<!-- //기존 슬라이드 이미지 <img src="../../uploads/sale_company/5178b4058e9ca2c3fa4f0672a07682d8.jpg" alt=""> -->
									<picture>
										<!--[if IE 9]><video style="display: none;"><![endif]-->
										<source srcset="../../uploads/sale_company/3cb8732ae79f0e8cb7d9002b94313709.jpg" media="(min-width:768px)">
										<!-- pc이미지 -->
										<source srcset="../../uploads/sale_company/3cb8732ae79f0e8cb7d9002b94313709.jpg" media="(max-width:767px)">
										<!-- mb이미지 -->
										<!--[if IE 9]></video><![endif]-->
										<img src="../../uploads/sale_company/3cb8732ae79f0e8cb7d9002b94313709.jpg" alt="">
										<!-- pc이미지 -->
									</picture>
								</a>
							</div>
							<div class="con">
								<p class="tit">
									<a href="/shop/company/store_view?no=43">경희궁점</a>
								</p>
								<p class="tel">
									<a href="tel:02-775-4663">02-775-4663</a>
								</p>
								<p class="addr">
									서울 종로구 경희궁길 7 (신문로2가),&nbsp;1층
								</p>
							</div>
						</li>
						<li>
							<div class="img">
								<a href="/shop/company/store_view?no=47">
									<!-- //기존 슬라이드 이미지 <img src="../../uploads/sale_company/5178b4058e9ca2c3fa4f0672a07682d8.jpg" alt=""> -->
									<picture>
										<!--[if IE 9]><video style="display: none;"><![endif]-->
										<source srcset="../../uploads/sale_company/03da34f558829841e53ef5c28d3bf500.jpg" media="(min-width:768px)">
										<!-- pc이미지 -->
										<source srcset="../../uploads/sale_company/03da34f558829841e53ef5c28d3bf500.jpg" media="(max-width:767px)">
										<!-- mb이미지 -->
										<!--[if IE 9]></video><![endif]-->
										<img src="../../uploads/sale_company/03da34f558829841e53ef5c28d3bf500.jpg" alt="">
										<!-- pc이미지 -->
									</picture>
								</a>
							</div>
							<div class="con">
								<p class="tit">
									<a href="/shop/company/store_view?no=47">코엑스점</a>
								</p>
								<p class="tel">
									<a href="tel:02-558-9880">02-558-9880</a>
								</p>
								<p class="addr">
									서울 강남구 봉은사로 524 (삼성동),&nbsp;인터컨티넨탈코엑스 지하 2층 C-14호
								</p>
							</div>
						</li>
						<li>
							<div class="img">
								<a href="/shop/company/store_view?no=45">
									<!-- //기존 슬라이드 이미지 <img src="../../uploads/sale_company/5178b4058e9ca2c3fa4f0672a07682d8.jpg" alt=""> -->
									<picture>
										<!--[if IE 9]><video style="display: none;"><![endif]-->
										<source srcset="../../uploads/sale_company/5658faa22204403b2cc96d1b8056cef4.jpg" media="(min-width:768px)">
										<!-- pc이미지 -->
										<source srcset="../../uploads/sale_company/5658faa22204403b2cc96d1b8056cef4.jpg" media="(max-width:767px)">
										<!-- mb이미지 -->
										<!--[if IE 9]></video><![endif]-->
										<img src="../../uploads/sale_company/5658faa22204403b2cc96d1b8056cef4.jpg" alt="">
										<!-- pc이미지 -->
									</picture>
								</a>
							</div>
							<div class="con">
								<p class="tit">
									<a href="/shop/company/store_view?no=45">서래마을점</a>
								</p>
								<p class="tel">
									<a href="tel:02-592-9035">02-592-9035</a>
								</p>
								<p class="addr">
									서울 서초구 서래로8길 1 (반포동),&nbsp;1층
								</p>
							</div>
						</li>
						<li>
							<div class="img">
								<a href="/shop/company/store_view?no=66">
									<!-- //기존 슬라이드 이미지 <img src="../../uploads/sale_company/5178b4058e9ca2c3fa4f0672a07682d8.jpg" alt=""> -->
									<picture>
										<!--[if IE 9]><video style="display: none;"><![endif]-->
										<source srcset="../../uploads/sale_company/d6e7d6866747d6e9c4dc17182b9c82ac.jpg" media="(min-width:768px)">
										<!-- pc이미지 -->
										<source srcset="../../uploads/sale_company/d6e7d6866747d6e9c4dc17182b9c82ac.jpg" media="(max-width:767px)">
										<!-- mb이미지 -->
										<!--[if IE 9]></video><![endif]-->
										<img src="../../uploads/sale_company/d6e7d6866747d6e9c4dc17182b9c82ac.jpg" alt="">
										<!-- pc이미지 -->
									</picture>
								</a>
							</div>
							<div class="con">
								<p class="tit">
									<a href="/shop/company/store_view?no=66">일산점</a>
								</p>
								<p class="tel">
									<a href="tel:031-911-1556">031-911-1556</a>
								</p>
								<p class="addr">
									경기 고양시 일산서구 하이파크2로 79-1,&nbsp;1층(덕이동)
								</p>
							</div>
						</li>
						<li>
						<div class="img">
							<a href="/shop/company/store_view?no=67">
								<!-- //기존 슬라이드 이미지 <img src="../../uploads/sale_company/5178b4058e9ca2c3fa4f0672a07682d8.jpg" alt=""> -->
								<picture>
									<!--[if IE 9]><video style="display: none;"><![endif]-->
									<source srcset="../../uploads/sale_company/d24bec494fd8406958a4e1a4af341d63.jpg" media="(min-width:768px)">
									<!-- pc이미지 -->
									<source srcset="../../uploads/sale_company/d24bec494fd8406958a4e1a4af341d63.jpg" media="(max-width:767px)">
									<!-- mb이미지 -->
									<!--[if IE 9]></video><![endif]-->
									<img src="../../uploads/sale_company/d24bec494fd8406958a4e1a4af341d63.jpg" alt="">
									<!-- pc이미지 -->
								</picture>
							</a>
						</div>
						<div class="con">
							<p class="tit">
								<a href="/shop/company/store_view?no=67">홍대점</a>
							</p>
							<p class="tel">
								<a href="tel:02-326-0116">02-326-0116</a>
							</p>
							<p class="addr">
								서울 마포구 양화로 113,&nbsp;1층 101호
							</p>
						</div>
						</li>
						<li>
						<div class="img">
							<a href="/shop/company/store_view?no=82">
								<!-- //기존 슬라이드 이미지 <img src="../../uploads/sale_company/5178b4058e9ca2c3fa4f0672a07682d8.jpg" alt=""> -->
								<picture>
									<!--[if IE 9]><video style="display: none;"><![endif]-->
									<source srcset="../../uploads/sale_company/207a6a8b9122468103fe7eb1a6d01d89.jpg" media="(min-width:768px)">
									<!-- pc이미지 -->
									<source srcset="../../uploads/sale_company/207a6a8b9122468103fe7eb1a6d01d89.jpg" media="(max-width:767px)">
									<!-- mb이미지 -->
									<!--[if IE 9]></video><![endif]-->
									<img src="../../uploads/sale_company/207a6a8b9122468103fe7eb1a6d01d89.jpg" alt="">
									<!-- pc이미지 -->
								</picture>
							</a>
						</div>
						<div class="con">
							<p class="tit">
								<a href="/shop/company/store_view?no=82">시청점</a>
							</p>
							<p class="tel">
								<a href="tel:02-777-3999">02-777-3999</a>
							</p>
							<p class="addr">
								서울 중구 세종대로 55,&nbsp;지하1층 식객촌 와인나라 시청역점
							</p>
						</div>
						</li>
						<li>
						<div class="img">
							<a href="/shop/company/store_view?no=86">
								<!-- //기존 슬라이드 이미지 <img src="../../uploads/sale_company/5178b4058e9ca2c3fa4f0672a07682d8.jpg" alt=""> -->
								<picture>
									<!--[if IE 9]><video style="display: none;"><![endif]-->
									<source srcset="../../uploads/sale_company/da22c61b2605e021702dd734032a4148.jpg" media="(min-width:768px)">
									<!-- pc이미지 -->
									<source srcset="../../uploads/sale_company/da22c61b2605e021702dd734032a4148.jpg" media="(max-width:767px)">
									<!-- mb이미지 -->
									<!--[if IE 9]></video><![endif]-->
									<img src="../../uploads/sale_company/da22c61b2605e021702dd734032a4148.jpg" alt="">
									<!-- pc이미지 -->
								</picture>
							</a>
						</div>
						<div class="con">
							<p class="tit">
								<a href="/shop/company/store_view?no=86">성수점</a>
							</p>
							<p class="tel">
								<a href="tel:02-6949-3869">02-6949-3869</a>
							</p>
							<p class="addr">
								서울 성동구 뚝섬로1길 25,&nbsp;111호, 112호
							</p>
						</div>
						</li>
						<li>
						<div class="img">
							<a href="/shop/company/store_view?no=110">
								<!-- //기존 슬라이드 이미지 <img src="../../uploads/sale_company/5178b4058e9ca2c3fa4f0672a07682d8.jpg" alt=""> -->
								<picture>
									<!--[if IE 9]><video style="display: none;"><![endif]-->
									<source srcset="../../uploads/sale_company/47fe5b8e0f24bfacb7b6473a62a82664.jpg" media="(min-width:768px)">
									<!-- pc이미지 -->
									<source srcset="../../uploads/sale_company/47fe5b8e0f24bfacb7b6473a62a82664.jpg" media="(max-width:767px)">
									<!-- mb이미지 -->
									<!--[if IE 9]></video><![endif]-->
									<img src="../../uploads/sale_company/47fe5b8e0f24bfacb7b6473a62a82664.jpg" alt="">
									<!-- pc이미지 -->
								</picture>
							</a>
						</div>
						<div class="con">
							<p class="tit">
								<a href="/shop/company/store_view?no=110">MOWa</a>
							</p>
							<p class="tel">
								<a href="tel:027535008">027535008</a>
							</p>
							<p class="addr">
								서울 중구 명동8나길 38,&nbsp;지하 1층
							</p>
						</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBkHz_mKqR0rPLCYPI3rVMHI9__fC23vmQ&callback=initMap" async defer></script>
	<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script> -->
	<link rel="stylesheet" type="text/css" href="../../asset/css/shop/slick.css">
	<script type="text/javascript" src="../../asset/js/slick.min.js"></script>
	<!-- page_script -->
	<script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=b129fd9215e06b4366c1a76b2c37d98b"></script>
	<script charset="UTF-8" src="https://t1.daumcdn.net/mapjsapi/js/main/4.4.14/kakao.js"></script>
	<script>
	var map_store_list = 'Array';
	var positions = [];
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
	mapOption = { 
		center: new kakao.maps.LatLng(37.51627012583932 , 126.98534040374476 ), // 지도의 중심좌표
		level: 7 // 지도의 확대 레벨
	};
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	// 마커를 표시할 위치와 title 객체 배열입니다 
		var tempObj = {};
		tempObj['no'] = '95';
		tempObj['title'] = '송도점';
		tempObj['latlng'] = new kakao.maps.LatLng(37.39434470645927, 126.64575959461425);
		positions.push(tempObj);
		var tempObj = {};
		tempObj['no'] = '88';
		tempObj['title'] = '신용산점';
		tempObj['latlng'] = new kakao.maps.LatLng(37.528759283805925, 126.96867629399223);
		positions.push(tempObj);
		var tempObj = {};
		tempObj['no'] = '87';
		tempObj['title'] = '압구정점';
		tempObj['latlng'] = new kakao.maps.LatLng(37.52634548506523, 127.02778174723325 );
		positions.push(tempObj);
		var tempObj = {};
		tempObj['no'] = '43';
		tempObj['title'] = '경희궁점';
		tempObj['latlng'] = new kakao.maps.LatLng(37.57081869969785, 126.97188196141941);
		positions.push(tempObj);
		var tempObj = {};
		tempObj['no'] = '47';
		tempObj['title'] = '코엑스점';
		tempObj['latlng'] = new kakao.maps.LatLng(37.51273421433322, 127.05729527659238);
		positions.push(tempObj);
		var tempObj = {};
		tempObj['no'] = '45';
		tempObj['title'] = '서래마을점';
		tempObj['latlng'] = new kakao.maps.LatLng(37.498746480084485, 126.9985694402033);
		positions.push(tempObj);
		var tempObj = {};
		tempObj['no'] = '66';
		tempObj['title'] = '일산점';
		tempObj['latlng'] = new kakao.maps.LatLng(37.70068243906565, 126.75806319224682);
		positions.push(tempObj);
		var tempObj = {};
		tempObj['no'] = '67';
		tempObj['title'] = '홍대점';
		tempObj['latlng'] = new kakao.maps.LatLng(37.553937731345115, 126.91930902970661);
		positions.push(tempObj);
		var tempObj = {};
		tempObj['no'] = '82';
		tempObj['title'] = '시청점';
		tempObj['latlng'] = new kakao.maps.LatLng(37.56153462154123, 126.97492440269153);
		positions.push(tempObj);
		var tempObj = {};
		tempObj['no'] = '86';
		tempObj['title'] = '성수점';
		tempObj['latlng'] = new kakao.maps.LatLng(37.54365230422235, 127.04655784007834);
		positions.push(tempObj);
		var tempObj = {};
		tempObj['no'] = '110';
		tempObj['title'] = 'MOWa';
		tempObj['latlng'] = new kakao.maps.LatLng(126.9826860, 37.5616367);
		positions.push(tempObj);
	// 마커 이미지의 이미지 주소입니다
	var imageSrc = "https://www.winenara.com/asset/images/shop/company/ico_marker.png"; 
	for (let i = 0; i < positions.length; i ++) {
		// 마커 이미지의 이미지 크기 입니다
		var imageSize = new kakao.maps.Size(25, 36); 
		// 마커 이미지를 생성합니다    
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
			map: map, // 마커를 표시할 지도
			position: positions[i].latlng, // 마커를 표시할 위치
			title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
			image : markerImage, // 마커 이미지 
			clickable: true // 마커를 클릭했을 때 지도의 클릭 이벤트가 발생하지 않도록 설정합니다
		});
		// 마커 클릭이벤트
		kakao.maps.event.addListener(marker, 'click', function(mouseEvent) {        
			cilck_btn(positions[i].no);
		});
	}
	function cilck_btn(no){
		location.href = '/shop/company/store_view?no='+no;
	}
	// 스토어 검색
	$("#store_keyword").keydown(function (key) {
		if (key.keyCode == 13) {
			sh_store();
		}
	});
	function sh_store(){
		var keywd = $("#store_keyword").val();
		var html = ""; var store_list = "";
		Csrf.Set(_CSRF_NAME_); //토큰 초기화
		$.ajax({
			type: 'POST',
			url: '/shop/company/shStoreList_ajax',
			dataType: 'json',
			data    : {store_keyword:keywd},
			success: function(res) {
				if(res.status == 'ok'){
					store_list = res.store_list;
					store_list.forEach (function (el, index) {
						html += '<li>';
						html += '		<div class="img">';
						html += '			<a href="/shop/company/store?no='+el.no+'">';
						html += '				<picture>';
						html += '					<source srcset="../../uploads/sale_company/'+el.file_nm1+'" media="(min-width:768px)"><!-- pc이미지 -->';
						html += '					<source srcset="../../uploads/sale_company/'+el.file_nm1+'" media="(max-width:767px)"><!-- mb이미지 -->';
						html += '					<img src="../../uploads/sale_company/'+el.file_nm1+'" alt=""><!-- pc이미지 -->';
						html += '				</picture>';
						html += '			</a>';                    	
						html += '		</div>';
						html += '		<div class="con">';
						html += '			<p class="tit"><a href="/shop/company/store">'+el.company_nm+'</a></p>';
						html += '			<p class="tel"><a href="tel:'+el.com_tel+'">'+el.com_tel+'</a></p>';
						html += '			<p class="addr">'+el.com_addr1+',&nbsp'+el.com_addr2+'</p>';
						html += '		</div>';
						html += '</li>';
					});
					$("#store_ul").html(html);
				}
				else console.log(res);
			}
		})
	};
	</script>
	<!-- //page_script -->
</section>
<!-- //contents -->

<!-- footer -->
<%@ include file="../common/footer.jsp" %>
<!-- //footer -->
<script language=javascript>
    $(".quick_menu .menu_open").on("click", function () {
        $(".quick_menu").toggleClass("on")
    });
</script>
</body>
</html>
<!--백로그 API-->
<script type="text/JavaScript">
	var page = '';
	if( page == false){
		page = 'main';
	}
	if( page !== 'product_view' && page !== 'order_ok'){
		console.log(page);
		/*
		RC_Method({
			sign_up_data: "",
			page_type : page, 
			behavior:"page_view"
		});
		*/
	}
</script>
<!--백로그 API-->
<!--lazy_loading-->
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/lozad/dist/lozad.min.js"></script>
<script>
	const observer = lozad();
	observer.observe();
	console.log('test');
</script>
<!--lazy_loading-->