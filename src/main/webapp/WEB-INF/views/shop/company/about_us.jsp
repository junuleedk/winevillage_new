<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINEVILLAGE 2024 ㅣ WineVillage</title>
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
			<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>WineVillage</span></button>
			<ul class="mb_lnb_lists">
				<li><a href="/shop/company/brand">Brands</a></li>
				<li><a href="/shop/company/store">Shop</a></li>
				<li><a href="/shop/company/fnb">F&amp;B</a></li>
				<li><a href="/shop/community/press_lists">Press</a></li>
				<li><a href="/shop/company/member_benefit">Membership</a></li>
			</ul>
		</div>
	</div>
	<div class="pc_lnb mb_hidden">
		<div class="page_tit">
			<h2><span>WineVillage</span></h2>
		</div>
		<ul class="menu">
			<li class="on"><a href="/shop/company/about_us"><span>WineVillage</span></a></li>
			<li><a href="/shop/company/brand"><span>Brands</span></a></li>
			<li><a href="/shop/company/store"><span>Shop</span></a></li>
			<li><a href="/shop/company/fnb"><span>F&amp;B</span></a></li>
			<li><a href="/shop/community/press_lists"><span>Press</span></a></li>
			<li><a href="/shop/company/member_benefit"><span>Membership</span></a></li>
		</ul>
	</div>
</div>
<div class="wrap">
	<div class="content company about_us_page">
		<div class="inner">
			<div class="js_tab">
				<ul class="js_tabBtn">
					<li class="on"><button type="button"><span class="img"><img src="../../asset/images/shop/company/ico_about_tab_01.png" alt=""></span><span class="txt">KOR</span></button></li>
					<li class=""><button type="button"><span class="img"><img src="../../asset/images/shop/company/ico_about_tab_02.png" alt=""></span><span class="txt">ENG</span></button></li>
					<li class=""><button type="button"><span class="img"><img src="../../asset/images/shop/company/ico_about_tab_03.png" alt=""></span><span class="txt">FR</span></button></li>
				</ul>
				<div class="js_tabCon on">
					<div class="typo_img">
						<picture>
						<!--[if IE 9]><video style="display: none;"><![endif]-->
						<source srcset="../../asset/images/shop/company/pc_about_logo.jpg" media="(min-width:768px)">
						<!-- pc이미지 -->
						<source srcset="../../asset/images/shop/company/mb_about_logo.jpg" media="(max-width:767px)">
						<!-- mb이미지 -->
						<!--[if IE 9]></video><![endif]-->
						<img src="../../asset/images/shop/company/pc_about_logo.jpg" alt="">
						<!-- pc이미지 -->
						</picture>
					</div>
					<div class="typo_txt">
						<p class="txt">
							㈜와인나라와 ㈜아영FBC를 중심으로 하는 아영 그룹은 주류 수입자유화 원년인 1987년 설립된 이래 <br>
							1세대 종합 와인전문기업으로 지금까지 줄곧 우리나라 와인문화를 선도해 왔습니다.<br>
							<br>
							아영 그룹은 ㈜아영FBC의 “고객에게 행운을 가져다 드린다 Fortune Brands Company”는 사명처럼 <br>
							믿을 수 있는 품질의 와인을 합리적인 가격으로 제공하기 위해 노력해 왔습니다.<br>
							<br>
							저희 아영 그룹은 최고의 명품 와인부터 부담없는 데일리 와인까지 <br>
							다양한 포트폴리오를 구성하여 국내 유명 백화점과 호텔은 물론, 대형할인점, 편의점, 레스토랑 등에 유통 판매하여 <br>
							고객님이 원하시는 어디에서나 저희 상품을 접하실 수 있습니다.<br>
							<br>
							아영 그룹은 또 다른 수입사인 ㈜와인나라IB와 주류도매법인인 ㈜우리와인을 관계사로 하여 <br>
							국내 최초로 와인의 수입부터 도매, 소매, 그리고 교육과 외식부문까지 와인 관련사업에서의 전 부문을 <br>
							아우르는 네트워크를 구축하여 보다 성숙하고 행복한 와인 문화를 향해 나아가고 있습니다.
						</p>
					</div>
					<div class="about_middle_banner">
						<picture>
						<!--[if IE 9]><video style="display: none;"><![endif]-->
						<source srcset="../../asset/images/shop/company/pc_about_middle.png" media="(min-width:768px)">
						<!-- pc이미지 -->
						<source srcset="../../asset/images/shop/company/mb_about_middle.png" media="(max-width:767px)">
						<!-- mb이미지 -->
						<!--[if IE 9]></video><![endif]-->
						<img src="../../asset/images/shop/company/pc_about_middle.png" alt="">
						<!-- pc이미지 -->
						</picture>
						<div class="f_box">
							<p>대한민국 주류 문화를 선도하는 1세대 종합주류 기업</p>
						</div>
					</div>
					<div class="about_info">
						<picture>
						<!--[if IE 9]><video style="display: none;"><![endif]-->
						<source srcset="../../asset/images/shop/company/pc_mind.jpg" media="(min-width:768px)">
						<!-- pc이미지 -->
						<source srcset="../../asset/images/shop/company/mb_mind.jpg" media="(max-width:767px)">
						<!-- mb이미지 -->
						<!--[if IE 9]></video><![endif]-->
						<img src="../../asset/images/shop/company/pc_mind.jpg" alt="">
						<!-- pc이미지 -->
						</picture>
					</div>
				</div>
				<div class="js_tabCon">
					<div class="typo_img">
						<picture>
						<!--[if IE 9]><video style="display: none;"><![endif]-->
						<source srcset="../../asset/images/shop/company/pc_about_logo_en.jpg" media="(min-width:768px)">
						<!-- pc이미지 -->
						<source srcset="../../asset/images/shop/company/mb_about_logo_en.jpg" media="(max-width:767px)">
						<!-- mb이미지 -->
						<!--[if IE 9]></video><![endif]-->
						<img src="../../asset/images/shop/company/pc_about_logo_en.jpg" alt="">
						<!-- pc이미지 -->
						</picture>
					</div>
					<div class="typo_txt">
						<p class="txt">
							Ayoung Group was established in 1987 - the year when alcohol import was legalized<br>
							in Korea - and has since been at the forefront of advancing wine culture.<br>
							Ayoung Group’s mission is to bring happiness to <br class="pc_hidden">
							clients by providing high quality wines at<br>
							a reasonable price point - hence our slogan “Fortune Brands Company.”<br>
							<br>
							From top wine brands to wines for everyday <br class="pc_hidden">
							drinking, we own a large portfolio and supply<br>
							renowned hotels, department stores, convenient <br class="pc_hidden">
							stores and restaurants. You can find our<br>
							wines anywhere you’d like, anytime you want.<br>
							<br>
							In addition to being the first wine importer in <br class="pc_hidden">
							Korea, Ayoung Group also owns several<br>
							restaurants and boutique shops. We look forward <br class="pc_hidden">
							to continuing to expand our network and<br>
							promote a healthy wine culture.
						</p>
					</div>
					<div class="about_middle_banner">
						<picture>
						<!--[if IE 9]><video style="display: none;"><![endif]-->
						<source srcset="../../asset/images/shop/company/pc_about_middle.png" media="(min-width:768px)">
						<!-- pc이미지 -->
						<source srcset="../../asset/images/shop/company/mb_about_middle.png" media="(max-width:767px)">
						<!-- mb이미지 -->
						<!--[if IE 9]></video><![endif]-->
						<img src="../../asset/images/shop/company/pc_about_middle.png" alt="">
						<!-- pc이미지 -->
						</picture>
						<div class="f_box">
							<p>
								A first-generation general alcoholic beverage company that leads<br>
								the Korean alcoholic beverage culture.
							</p>
						</div>
					</div>
					<div class="about_info">
						<picture>
						<!--[if IE 9]><video style="display: none;"><![endif]-->
						<source srcset="../../asset/images/shop/company/pc_mind_en.jpg" media="(min-width:768px)">
						<!-- pc이미지 -->
						<source srcset="../../asset/images/shop/company/mb_mind_en.jpg" media="(max-width:767px)">
						<!-- mb이미지 -->
						<!--[if IE 9]></video><![endif]-->
						<img src="../../asset/images/shop/company/pc_mind_en.jpg" alt="">
						<!-- pc이미지 -->
						</picture>
					</div>
				</div>
				<div class="js_tabCon">
					<div class="typo_img">
						<picture>
						<!--[if IE 9]><video style="display: none;"><![endif]-->
						<source srcset="../../asset/images/shop/company/pc_about_logo_fr.jpg" media="(min-width:768px)">
						<!-- pc이미지 -->
						<source srcset="../../asset/images/shop/company/mb_about_logo_fr.jpg" media="(max-width:767px)">
						<!-- mb이미지 -->
						<!--[if IE 9]></video><![endif]-->
						<img src="../../asset/images/shop/company/pc_about_logo_fr.jpg" alt="">
						<!-- pc이미지 -->
						</picture>
					</div>
					<div class="typo_txt">
						<p class="txt">
							Le groupe Ayoung a été fondé en 1987, l’année ou l’importation d’alcool a été légalisée en Corée, <br class="mb_hidden">
							et a depuis été à l'avant-garde de la promotion de la culture du vin.<br>
							<br>
							Le groupe Ayoung a pour mission de satisfaire ses clients en leur proposant des vins de haute qualité à un prix raisonnable, <br class="mb_hidden">
							d’où notre slogan “Fortune Brands Company”.<br>
							<br>
							De vins de luxe aux vins de consommation courante, nous disposons d’une large gamme et nous fournissons les grands hôtels, grands magasins, <br class="mb_hidden">
							magasins de proximité et les restaurants de renom. Vous pouvez trouver nos vins où vous voulez, quand vous voulez.<br>
							<br>
							En plus d'être le premier importateur de vins en Corée, le groupe Ayoung possède également plusieurs restaurants et boutiques. <br class="mb_hidden">
							Nous nous réjouissons à l'idée de continuer à étendre notre réseau et à promouvoir une culture du vin saine.
						</p>
					</div>
					<div class="about_middle_banner">
						<picture>
						<!--[if IE 9]><video style="display: none;"><![endif]-->
						<source srcset="../../asset/images/shop/company/pc_about_middle.png" media="(min-width:768px)">
						<!-- pc이미지 -->
						<source srcset="../../asset/images/shop/company/mb_about_middle.png" media="(max-width:767px)">
						<!-- mb이미지 -->
						<!--[if IE 9]></video><![endif]-->
						<img src="../../asset/images/shop/company/pc_about_middle.png" alt="">
						<!-- pc이미지 -->
						</picture>
						<div class="f_box">
							<p>
								Un distributeur historique à l'avant-garde de la<br>
								culture coréenne des boissons alcoolisées.
							</p>
						</div>
					</div>
					<div class="about_info">
						<picture>
						<!--[if IE 9]><video style="display: none;"><![endif]-->
						<source srcset="../../asset/images/shop/company/pc_mind_fr.jpg" media="(min-width:768px)">
						<!-- pc이미지 -->
						<source srcset="../../asset/images/shop/company/mb_mind_fr.jpg" media="(max-width:767px)">
						<!-- mb이미지 -->
						<!--[if IE 9]></video><![endif]-->
						<img src="../../asset/images/shop/company/pc_mind_fr.jpg" alt="">
						<!-- pc이미지 -->
						</picture>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
</script>
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