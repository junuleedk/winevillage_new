<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINEVILLAGE 2024 ㅣ Brands</title>
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
<section id="contents">
<div class="lnb comm_lnb bg_lnb company_lnb lnb_wrap">
	<div class="pc_hidden">
		<a href="javascript:history.go(-1);" class="prev">이전</a>
		<div class="select_brand js_select" id="select_brand">
			<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>Brands</span></button>
			<ul class="mb_lnb_lists">
				<li><a href="/shop/company/about_us.do">WineVillage</a></li>
				<li><a href="/shop/company/store.do">Shop</a></li>
				<!-- <li><a href="/shop/company/fnb">F&B</a></li> -->
				<li><a href="/shop/community/press_lists.do">Press</a></li>
				<li><a href="/shop/company/member_benefit.do">Membership</a></li>
			</ul>
		</div>
	</div>
	<div class="pc_lnb mb_hidden">
		<div class="page_tit">
			<h2><span>Brands</span></h2>
		</div>
		<ul class="menu">
			<li><a href="/shop/company/about_us.do"><span>WineVillage</span></a></li>
			<li class="on"><a href="/shop/company/brand.do"><span>Brands</span></a></li>
			<li><a href="/shop/company/store.do"><span>Shop</span></a></li>
			<!-- <li><a href="/shop/company/fnb"><span>F&B</span></a></li> -->
			<li><a href="/shop/community/press_lists.do"><span>Press</span></a></li>
			<li><a href="/shop/company/member_benefit.do"><span>Membership</span></a></li>
		</ul>
	</div>
</div>
<div class="wrap">
	<div class="content company brand_page">
		<div class="inner">
			<div class="country_tab js_tab">
				<ul class="js_tabBtn">
					<li class="country on"><button>프랑스</button></li>
					<li class="country italia"><button>이탈리아</button></li>
					<li class="country spain"><button>스페인</button></li>
					<li class="country germ"><button>독일</button></li>
					<li class="country aut"><button>오스트리아</button></li>
					<li class="country usa"><button>미국</button></li>
					<li class="country chile"><button>칠레</button></li>
					<li class="country aus"><button>호주</button></li>
					<li class="country newzeal"><button>뉴질랜드</button></li>
					<li class="country argentina"><button>아르헨티나</button></li>
				</ul>
				<div class="js_tabCon on">
					<h3>전 세계 최고의 프리미엄 와인브랜드를<br>와인빌리지에서 가장 먼저 선보입니다.</h3>
					<div class="country_info">
						<img src="/asset/images/shop/company/flag_france.png" alt="">
						<strong>프랑스<br>(FRANCE)</strong>
					</div>
					<div class="country_con_lists">
						<p class="tit">1. 상파뉴(CHAMPANGE)</p>
						<ul>
							<li class="text_r">
								<div class="img">
									<img src="/asset/images/shop/company/france_img01.png" alt="아르망 드 브리냑">
								</div>
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">아르망 드 브리냑</strong>
										<em>ARMAND DE BRIGNAC</em>
									</div>
									<div class="explain">
										<span>: 최상급 명품 샴페인의 모든 것, 존재하는 모든 것 중 가장 럭셔리한 샴페인 </span>
									</div>
								</div>
							</li>
							<li class="text_l">
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">파이퍼 하이직</strong>
										<em>PIPER-HEIDSIEK</em>
									</div>
									<div class="explain">
										<span>: 만인의 연인 마릴린 먼로가 사랑한 샴페인, 칸 국제 영화제 공식 샴페인 </span>
									</div>
								</div>
								<div class="img">
									<img src="/asset/images/shop/company/france_img02.png" alt="파이퍼 하이직">
								</div>
							</li>
							<li class="text_r">
								<div class="img">
									<img src="/asset/images/shop/company/france_img03.png" alt="레어">
								</div>
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">레어</strong>
										<em>Rare</em>
									</div>
									<div class="explain">
										<span>: 2000년대 샴페인 중 최고의 샴페인으로 선정된 세기의 샴페인 </span>
									</div>
								</div>
							</li>
							<li class="text_l">
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">어니스트 레미</strong>
										<em>ERNEST REMY</em>
									</div>
									<div class="explain">
										<span>: 최상의 블랑 드 누아 그랑크뤼 샴페인 </span>
									</div>
								</div>
								<div class="img">
									<img src="/asset/images/shop/company/france_img04.png" alt="어니스트 레미">
								</div>
							</li>
							<li class="text_r">
								<div class="img">
									<img src="/asset/images/shop/company/france_img05.png" alt="발렌틴 르플레이브">
								</div>
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">발렌틴 르플레이브</strong>
										<em>VALENTIN LEFLAIVE</em>
									</div>
									<div class="explain">
										<span>: 전 세계가 인정하는 최고의 마스터들의 합작 A CROSS OVER PROJECT -BOURGOGNE X CHAMPAGNE </span>
									</div>
								</div>
							</li>
							<li class="text_l">
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">샴페인 팔머</strong>
										<em>CHAMPAGNE PALMER</em>
									</div>
									<div class="explain">
										<span>: 샹파뉴 지역 최고의 샴페인 탄생을 위한 샴페인 장인들의 마스터피스 </span>
									</div>
								</div>
								<div class="img">
									<img src="/asset/images/shop/company/france_img06.png" alt="샴페인 팔머">
								</div>
							</li>
							<li class="text_r">
								<div class="img">
									<img src="/asset/images/shop/company/france_img07.png" alt="폴 당장 & 필스">
								</div>
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">폴 당장 & 필스</strong>
										<em>PAUL DANGIN & FILS</em>
									</div>
									<div class="explain">
										<span>: 합리적인 가격대에 즐기기 좋은 균형잡힌 샴페인 생산 </span>
									</div>
								</div>
							</li>
						</ul>
						<p class="tit">2. 부르고뉴(BOURGOGNE)</p>
						<ul>
							<li class="text_r">
								<div class="img">
									<img src="/asset/images/shop/company/france_img08.png" alt="루이 라뚜르">
								</div>
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">루이 라뚜르</strong>
										<em>LOUIS LATOUR</em>
									</div>
									<div class="explain">
										<span>: 부르고뉴에서 가장 오랜 역사를 자랑하는 브랜드, 합리적인 가격부터 초고가 명품까지 다양한 컬렉션 보유 </span>
									</div>
								</div>
							</li>
							<li class="text_l">
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">시모네 페브르</strong>
										<em>SIMONNET-FEBVRE</em>
									</div>
									<div class="explain">
										<span>: 루이라뚜르사에서 샤블리 특화 생산을 위해 런칭한 세컨드 브랜드 </span>
									</div>
								</div>
								<div class="img">
									<img src="/asset/images/shop/company/france_img09.png" alt="시모네 페브르">
								</div>
							</li>
							<li class="text_r">
								<div class="img">
									<img src="/asset/images/shop/company/france_img10.png" alt="샤또 드 샤미레">
								</div>
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">샤또 드 샤미레</strong>
										<em>CHATEAU DE CHAMIREY</em>
									</div>
									<div class="explain">
										<span>: 섬세한 양조 과정으로 우아한 페루아를 그대로 드러내며, 프랑스 레스토랑 리스팅 1위 와인 </span>
									</div>
								</div>
							</li>
							<li class="text_l">
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">도멘 드 페르드리</strong>
										<em>DOMAINE DES PERDRIX</em>
									</div>
									<div class="explain">
										<span>: 루이라뚜르사에서 샤블리 특화 생산을 위해 런칭한 세컨드 브랜드 </span>
									</div>
								</div>
								<div class="img">
									<img src="/asset/images/shop/company/france_img11.png" alt="도멘 드 페르드리">
								</div>
							</li>
							<li class="text_r">
								<div class="img">
									<img src="/asset/images/shop/company/france_img12.png" alt="모리스 가비네">
								</div>
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">모리스 가비네</strong>
										<em>MAURICE GAVIGNET</em>
									</div>
									<div class="explain">
										<span>: 9세기 DRC의 와인 메이킹을 담당해 역사를탄생시킨 와인메이커가 자신의 이름을 걸로 만든 브랜드 </span>
									</div>
								</div>
							</li>
							<li class="text_l">
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">로시뇰 코르우 에 피스</strong>
										<em>Rossignol-Cornu et Fils</em>
									</div>
									<div class="explain">
										<span>: 부르고뉴 지역 내 소비로만 솔드아웃, 부르고뉴 사람들이 가장 즐겨 마시는 진짜 부르고뉴 와인 </span>
									</div>
								</div>
								<div class="img">
									<img src="/asset/images/shop/company/france_img13.png" alt="로시뇰 코르우 에 피스">
								</div>
							</li>
						</ul>
						<p class="tit">3. 보르도(BORDEAUX)</p>
						<ul>
							<li class="text_r">
								<div class="img">
									<img src="/asset/images/shop/company/france_img14.png" alt="앙드레 뤼통">
								</div>
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">앙드레 뤼통</strong>
										<em>ANDRE LURTON</em>
									</div>
									<div class="explain">
										<span>: '보르도 와인의 대부'앙드레 뤼퉁의 브랜드, 보르도 와인의 정석이라 불리며 합리적인 가격의 뛰어난 퀄리티를 자랑 </span>
									</div>
								</div>
							</li>
							<li class="text_l">
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">피에르 뤼통</strong>
										<em>PIERRE LURTON</em>
									</div>
									<div class="explain">
										<span>: 전 세계 최고의 와인 샤또 디켐과 샤또 슈발 블랑의 와인 메이커의 작품, 새로운 보르도의 문을 상징 </span>
									</div>
								</div>
								<div class="img">
									<img src="/asset/images/shop/company/france_img15.png" alt="피에르 뤼통">
								</div>
							</li>
							<li class="text_r">
								<div class="img">
									<img src="/asset/images/shop/company/france_img16.png" alt="샤토 비뇨">
								</div>
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">샤토 비뇨</strong>
										<em>CHATEAU VIGNOT</em>
									</div>
									<div class="explain">
										<span>: 보르도 명산지 '뽀므롤'바로 옆에 위치한 생테밀리옹 그랑크뤼, 잭슨 패밀리 소유 </span>
									</div>
								</div>
							</li>
						</ul>
						<p class="tit">4. 론(RHONE)</p>
						<ul>
							<li class="text_r">
								<div class="img">
									<img src="/asset/images/shop/company/france_img17.png" alt="도멘 드 마르꾸">
								</div>
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">도멘 드 마르꾸</strong>
										<em>DOMAINE DE MARCOUX</em>
									</div>
									<div class="explain">
										<span>: '샤또네프 뒤 빠쁘'에서 가장 오래된 가문인 아르므니에(ARMENIER) 패밀리 소유, 바이오다이나믹 농법 생산 </span>
									</div>
								</div>
							</li>
							<li class="text_l">
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">셀리에 데 프린스</strong>
										<em>CELLIER DES PRINCES</em>
									</div>
									<div class="explain">
										<span>: 로버트 파커로부터 100점을 무려 21회나 받은 PHILIPPE CAMBIE의 가성비 최고 론 와인 </span>
									</div>
								</div>
								<div class="img">
									<img src="/asset/images/shop/company/france_img18.png" alt="셀리에 데 프린스">
								</div>
							</li>
						</ul>
						<p class="tit">5. 알자스(ALSACE)</p>
						<ul>
							<li class="text_r">
								<div class="img">
									<img src="/asset/images/shop/company/france_img19.png" alt="트림바크">
								</div>
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">트림바크</strong>
										<em>TRIMBACH</em>
									</div>
									<div class="explain">
										<span>: 알자스의 상징 화이트 와인 명가, '디캔터지 선정 세계 10대 화이트 와인 메이커' </span>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="js_tabCon">
					<h3>전 세계 최고의 프리미엄 와인브랜드를<br>와인빌리지에서 가장 먼저 선보입니다.</h3>
					<div class="country_info">
						<img src="/asset/images/shop/company/flag_italia.png" alt="">
						<strong>이탈리아<br>(ITALIA)</strong>
					</div>
					<div class="country_con_lists">
						<p class="tit">1. 토스카나(TOSCANA)</p>
						<ul>
							<li class="text_r">
								<div class="img">
									<img src="/asset/images/shop/company/italia_img01.png" alt="안티노리">
								</div>
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">안티노리</strong>
										<em>ANTINORI</em>
									</div>
									<div class="explain">
										<span>: 700여년의 세기를 뛰어 넘는 역사, 현존하는 최고의 이탈리아 와인 명가 </span>
									</div>
								</div>
							</li>
							<li class="text_l">
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">뚜아 리따</strong>
										<em>TUA RITA</em>
									</div>
									<div class="explain">
										<span>: 이태리 와인 사상 최초 RP 100점, WS 100점을 모두 수상, 로버트 파커 '꿈의 와인' </span>
									</div>
								</div>
								<div class="img">
									<img src="/asset/images/shop/company/italia_img02.png" alt="뚜아 리따">
								</div>
							</li>
							<li class="text_r">
								<div class="img">
									<img src="/asset/images/shop/company/italia_img03.png" alt="파토리아 르 푸필레">
								</div>
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">파토리아 르 푸필레</strong>
										<em>FATTORIA LE PIPILLE</em>
									</div>
									<div class="explain">
										<span>: JS 100점에 빛나는 새롭게 떠오르는 최고의 수퍼 투스칸 </span>
									</div>
								</div>
							</li>
							<li class="text_l">
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">루체 델라 비테</strong>
										<em>LUCE DELLA VITE</em>
									</div>
									<div class="explain">
										<span>: 프레스 코발디와 로버트 몬다비의 만남, 프랑스 보르도 특급 와인과 어깨를 나란히 하는 수퍼 투스칸 </span>
									</div>
								</div>
								<div class="img">
									<img src="/asset/images/shop/company/italia_img04.png" alt="루체 델라 비테">
								</div>
							</li>
							<li class="text_r">
								<div class="img">
									<img src="/asset/images/shop/company/italia_img05.png" alt="카스텔로 디 베라짜노">
								</div>
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">카스텔로 디 베라짜노</strong>
										<em>CASTELLO DE VERRAZZANO</em>
									</div>
									<div class="explain">
										<span>: 모험과 도전 정신의 와인, 2013년 WINE ENTHUSIAST 100대 와인 선정 </span>
									</div>
								</div>
							</li>
							<li class="text_l">
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">스텔라 디 캄팔토</strong>
										<em>STELLA DI CAMPALTO</em>
									</div>
									<div class="explain">
										<span>: 브루넬로 디 몬탈치노의 떠오르는 별, 바이오다이나믹 농법으로 생산하는 매혹적인 와인 </span>
									</div>
								</div>
								<div class="img">
									<img src="/asset/images/shop/company/italia_img06.png" alt="스텔라 디 캄팔토">
								</div>
							</li>
							<li class="text_r">
								<div class="img">
									<img src="/asset/images/shop/company/italia_img07.png" alt="빌라 엠, 지아니 갈리아르도">
								</div>
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">빌라 엠</strong>
										<em>VILLA M</em>
										<strong class="sub_tit">지아니 갈리아르도</strong>
										<em>Gianni Gagliardo</em>
									</div>
									<div class="explain">
										<span>: 국내 이태리 와인 판매 NO.1 브랜드, 연인들을 위한 달콤한 고백/프로포즈 와인 </span>
									</div>
								</div>
							</li>
							<li class="text_l">
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">산테로</strong>
										<em>SANTERO</em>
									</div>
									<div class="explain">
										<span>: 오렌지색 라벨이 곧 산테로를 의미할 정도로 인기 있는 이태리 국민 스파클링 와인 </span>
									</div>
								</div>
								<div class="img">
									<img src="/asset/images/shop/company/italia_img08.png" alt="산테로">
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="js_tabCon">
					<h3>전 세계 최고의 프리미엄 와인브랜드를<br>와인빌리지에서 가장 먼저 선보입니다.</h3>
					<div class="country_info">
						<img src="/asset/images/shop/company/flag_spain.png" alt="">
						<strong>스페인<br>(SPAIN)</strong>
					</div>
					<div class="country_con_lists">
						<p class="tit">1. 리오하(RIOJA)</p>
						<ul>
							<li class="text_r">
								<div class="img">
									<picture>
									<!--[if IE 9]><video style="display: none;"><![endif]-->
									<source srcset="/asset/images/shop/company/pc_spain_cvne.png" media="(min-width:768px)">
									<!-- pc이미지 -->
									<source srcset="/asset/images/shop/company/mb_spain_cvne.png" media="(max-width:767px)">
									<!-- mb이미지 -->
									<!--[if IE 9]></video><![endif]-->
									<img src="/asset/images/shop/company/pc_spain_cvne.png" alt="쿠네">
									<!-- pc이미지 -->
									</picture>
								</div>
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">쿠네</strong>
										<em>CVNE</em>
									</div>
									<div class="explain">
										<span>: 스페인 와인 역사상 최초의 와인스펙테이터 1위와인을 탄생시킨 스페인 국민 와인 브랜드 </span>
									</div>
								</div>
							</li>
							<li class="text_l">
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">아르테비노</strong>
										<em>ARTEVINO</em>
									</div>
									<div class="explain">
										<span>: 스페인 국왕 대관식 와인을 비롯해 스페인 프리미엄와인의 퀄리티를 보여주는 와인 </span>
									</div>
								</div>
								<div class="img">
									<picture>
									<!--[if IE 9]><video style="display: none;"><![endif]-->
									<source srcset="/asset/images/shop/company/pc_spain_artevino.png" media="(min-width:768px)">
									<!-- pc이미지 -->
									<source srcset="/asset/images/shop/company/mb_spain_artevino.png" media="(max-width:767px)">
									<!-- mb이미지 -->
									<!--[if IE 9]></video><![endif]-->
									<img src="/asset/images/shop/company/pc_spain_artevino.png" alt="쿠네">
									<!-- pc이미지 -->
									</picture>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="js_tabCon">
					<h3>전 세계 최고의 프리미엄 와인브랜드를<br>와인빌리지에서 가장 먼저 선보입니다.</h3>
					<div class="country_info">
						<img src="/asset/images/shop/company/flag_germany.png" alt="">
						<strong>독일<br>(GERMANY)</strong>
					</div>
					<div class="country_con_lists">
						<p class="tit">1. 모젤(MOZEL)</p>
						<ul>
							<li class="text_l">
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">마르쿠스 몰리터</strong>
										<em>MARKUS MOLITOR</em>
									</div>
									<div class="explain">
										<span>: 모젤와인의 기적, RP 100점을 단기간 동안 4번이나 받은 독일의 '라이징스타 와이너리' </span>
									</div>
								</div>
								<div class="img">
									<img src="/asset/images/shop/company/germany_img01.png" alt="마르쿠스 몰리터">
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="js_tabCon">
					<h3>전 세계 최고의 프리미엄 와인브랜드를<br>와인빌리지에서 가장 먼저 선보입니다.</h3>
					<div class="country_info">
						<img src="/asset/images/shop/company/flag_austria.png" alt="">
						<strong>오스트리아<br>(AUSTRIA)</strong>
					</div>
					<div class="country_con_lists">
						<ul>
							<li class="text_l">
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">슐럼베르거</strong>
										<em>SCHLUMBERGER</em>
									</div>
									<div class="explain">
										<span>: 오스트리아 최초의 젝트회사, 구스타프 클림트를 탄생 기념 와인 출시 </span>
									</div>
								</div>
								<div class="img">
									<img src="/asset/images/shop/company/austria_img01.png" alt="슐럼베르거">
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="js_tabCon">
					<h3>전 세계 최고의 프리미엄 와인브랜드를<br>와인빌리지에서 가장 먼저 선보입니다.</h3>
					<div class="country_info">
						<img src="/asset/images/shop/company/flag_usa.png" alt="">
						<strong>미국<br>(U.S.A)</strong>
					</div>
					<div class="country_con_lists">
						<p class="tit">1. 캘리포니아(CALIFORNIA)</p>
						<ul>
							<li class="text_r">
								<div class="img">
									<img src="/asset/images/shop/company/usa_img01.png" alt="잭슨 패밀리 와인즈">
								</div>
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">잭슨 패밀리 와인즈</strong>
										<em>ANTINORI</em>
									</div>
									<div class="explain">
										<span>: 캘리포니아의 살아 있는 역사, 미국 NO.1 베스트 셀링 와인을 탄생시킨 최고의 브랜드 </span>
									</div>
								</div>
							</li>
							<li class="text_l">
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">헌드레드 에이커</strong>
										<em>HUNDRED ACRE</em>
									</div>
									<div class="explain">
										<span>: 천재 와인메이커의 탄생, RP 100점 만점을 22번이나 받으며 단숨에 나파를 정복한 최상급 컬트 와인 </span>
									</div>
								</div>
								<div class="img">
									<img src="/asset/images/shop/company/usa_img02.png" alt="헌드레드 에이커">
								</div>
							</li>
							<li class="text_r">
								<div class="img">
									<img src="/asset/images/shop/company/usa_img03.png" alt="보리우 빈야드">
								</div>
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">보리우 빈야드</strong>
										<em>BEAULIEU VINEYARD</em>
									</div>
									<div class="explain">
										<span>: 100년 이상의 역사, 백악관 헤드 테이블을 가장 많이 장식한 역대 대통령 와인산지 </span>
									</div>
								</div>
							</li>
							<li class="text_l">
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">텔라토 와인 그룹</strong>
										<em>TERLATO WINE GROUP</em>
									</div>
									<div class="explain">
										<span>: 와인 유통에서 생산까지, 와인 전문 기업 텔라토 와인 그룹, 미국 명품 와인 시장의 주역 </span>
									</div>
								</div>
								<div class="img">
									<img src="/asset/images/shop/company/usa_img04.png" alt="텔라토 와인 그룹">
								</div>
							</li>
							<li class="text_r">
								<div class="img">
									<img src="/asset/images/shop/company/usa_img05.png" alt="아발론 와이너리">
								</div>
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">아발론 와이너리</strong>
										<em>AVALON WINERY</em>
									</div>
									<div class="explain">
										<span>: '아더왕의 전설'에서 아더왕이 영원한 휴식을 위해 찾은 낙원을 의미하는 미국 TOP VALUE 와인 </span>
									</div>
								</div>
							</li>
							<li class="text_l">
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">펫저</strong>
										<em>FETZER</em>
									</div>
									<div class="explain">
										<span>: 전세계에서 B CORP 인증을 받은 미국 NO.1 유기농 와이너리, 와인 최대 마케팅 회사인 콘 차이 토로 운영 </span>
									</div>
								</div>
								<div class="img">
									<img src="/asset/images/shop/company/usa_img06.png" alt="펫저">
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="js_tabCon">
					<h3>전 세계 최고의 프리미엄 와인브랜드를<br>와인빌리지에서 가장 먼저 선보입니다.</h3>
					<div class="country_info">
						<img src="/asset/images/shop/company/flag_chile.png" alt="">
						<strong>칠레<br>(CHILE)</strong>
					</div>
					<div class="country_con_lists">
						<ul>
							<li class="text_r">
								<div class="img">
									<img src="/asset/images/shop/company/chile_img01.png" alt="비냐 에라주리즈">
								</div>
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">비냐 에라주리즈</strong>
										<em>VINA ERRAZURIZ</em>
									</div>
									<div class="explain">
										<span>: 역대 대통령을 4번이나 탄생시킨 칠레의 케네디 150여년의 역사를 가진 칠레 최고의 품격 와이너리 칠레의 심장, 에라주리즈의 상징인 아콩카구아 밸리에서 생상하는 최대의 와인 보유 </span>
									</div>
								</div>
							</li>
							<li class="text_l">
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">콘 차이 토로</strong>
										<em>CONCHAYTORO</em>
									</div>
									<div class="explain">
										<span>: 1초에 1병씩 팔리는 세계적인 브랜드이자 최고의 가성비 와인 '디아블로'를 탄생시킨 글로벌 와인 회사 </span>
									</div>
								</div>
								<div class="img">
									<img src="/asset/images/shop/company/chile_img02.png" alt="콘 차이 토로">
								</div>
							</li>
							<li class="text_r">
								<div class="img">
									<img src="/asset/images/shop/company/chile_img03.png" alt="바롱 필립 드 로칠드 칠레">
								</div>
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">바롱 필립 드 로칠드 칠레</strong>
										<em>BARON PHILIPPE DE ROTHSCHILD CHILE</em>
									</div>
									<div class="explain">
										<span>: 프랑스 최고의 와인명가 '로칠드'가문의 기술력과 칠레 천혜의 자연환경의 합작물 </span>
									</div>
								</div>
							</li>
							<li class="text_l">
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">하라스 데 피르케</strong>
										<em>HARAS DE PIRQUE</em>
									</div>
									<div class="explain">
										<span>: 칠레 최고의 와인산지 마이포 밸리 생산, 이태리 최고의 와인명가 '안티노리'합작 메이킹으로 탄생한 '명마의 와인' </span>
									</div>
								</div>
								<div class="img">
									<img src="/asset/images/shop/company/chile_img04.png" alt="하라스 데 피르케">
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="js_tabCon">
					<h3>전 세계 최고의 프리미엄 와인브랜드를<br>와인빌리지에서 가장 먼저 선보입니다.</h3>
					<div class="country_info">
						<img src="/asset/images/shop/company/flag_australia.png" alt="">
						<strong>호주<br>(AUSTRALIA)</strong>
					</div>
					<div class="country_con_lists">
						<ul>
							<li class="text_r">
								<div class="img">
									<img src="/asset/images/shop/company/australia_img01.png" alt="양가라">
								</div>
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">양가라</strong>
										<em>YANGARRA</em>
									</div>
									<div class="explain">
										<span>: 잭슨 패밀리 생산, 최상급 바이오 다이나믹 농법 등으로 2016 올해의 와인 메이커 선정되며 명실상부 호주 프리미엄 와인 생산 와이너리 </span>
									</div>
								</div>
							</li>
							<li class="text_l">
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">락베어</strong>
										<em>ROCKBARE</em>
									</div>
									<div class="explain">
										<span>: 잭슨 패밀리 생산, 품질 높은 가성비 호주 와인 프로젝트 남호주 아이콘 와인산지 생산하는 NEW GENERATION 브랜드 </span>
									</div>
								</div>
								<div class="img">
									<img src="/asset/images/shop/company/australia_img02.png" alt="락베어">
								</div>
							</li>
							<li class="text_r">
								<div class="img">
									<img src="/asset/images/shop/company/australia_img03.png" alt="티렐스 와인">
								</div>
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">티렐스 와인</strong>
										<em>YANGARRA</em>
									</div>
									<div class="explain">
										<span>: 호주 프리미엄 와인 트랜드를 이끌고 있는 헌터 밸리의 가장 오래된 와인 명가 </span>
									</div>
								</div>
							</li>
							<li class="text_l">
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">린드만</strong>
										<em>LINDEMAN'S</em>
									</div>
									<div class="explain">
										<span>: 닥터 린드만 빈 시리즈- NO. 1 SELLING AUSTRALIAN WINES '변함없는 품질', '특별한 가치'와 동의어로 여겨지는 신뢰받고 존중받는 브랜드 </span>
									</div>
								</div>
								<div class="img">
									<img src="/asset/images/shop/company/australia_img04.png" alt="린드만">
								</div>
							</li>
							<li class="text_r">
								<div class="img">
									<img src="/asset/images/shop/company/australia_img05.png" alt="카스텔리 에스테이트">
								</div>
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">카스텔리 에스테이트</strong>
										<em>CASTELLI ESTATAE</em>
									</div>
									<div class="explain">
										<span>: 카스텔리 가문의 고향은 이태리의 라찌오 지방, 이태리 와인 스타일이 담긴 차기 호주 컬트 와인의 선두주자 </span>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="js_tabCon">
					<h3>전 세계 최고의 프리미엄 와인브랜드를<br>와인빌리지에서 가장 먼저 선보입니다.</h3>
					<div class="country_info">
						<img src="/asset/images/shop/company/flag_newzealand.png" alt="">
						<strong>뉴질랜드<br>(NEW ZEALAND)</strong>
					</div>
					<div class="country_con_lists">
						<p class="tit">1. 말보로(MALBOROUGH)</p>
						<ul>
							<li class="text_l">
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">리틀 뷰티</strong>
										<em>LITTLE BEAUTY</em>
									</div>
									<div class="explain">
										<span>: 작고 아름다운 와이너리, 뉴질랜드 최고의 수석 와인메이커가 만든 뉴질랜드 TOP3 소비뇽 블랑 브랜드 </span>
									</div>
								</div>
								<div class="img">
									<img src="/asset/images/shop/company/newzealand_img01.png" alt="리틀 뷰티">
								</div>
							</li>
							<li class="text_r">
								<div class="img">
									<img src="/asset/images/shop/company/newzealand_img02.png" alt="오이스터 베이">
								</div>
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">오이스터 베이</strong>
										<em>OYSTER BAY</em>
									</div>
									<div class="explain">
										<span>: 오이스터 베이, 뉴질랜드 소비뇽 블랑의 명성을 최초로 전 세계에 알린 와인 </span>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="js_tabCon">
					<h3>전 세계 최고의 프리미엄 와인브랜드를<br>와인빌리지에서 가장 먼저 선보입니다.</h3>
					<div class="country_info">
						<img src="/asset/images/shop/company/flag_argentina.png" alt="">
						<strong>아르헨티나<br>(ARGENTINA)</strong>
					</div>
					<div class="country_con_lists">
						<p class="tit">1. 멘도자(MENDOJA)</p>
						<ul>
							<li class="text_l">
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">수사나 발보 와인</strong>
										<em>SUSANA BALBO WINES</em>
									</div>
									<div class="explain">
										<span>: 아르헨티나 와인 산업의 선두주자, 수사나 발보 와인 이름 자체가 아르헨티나 말벡의 퀄리티를 의미 </span>
									</div>
								</div>
								<div class="img">
									<img src="/asset/images/shop/company/argentina_img01.png" alt="수사나 발보 와인">
								</div>
							</li>
							<li class="text_r">
								<div class="img">
									<img src="/asset/images/shop/company/argentina_img02.png" alt="페나플로">
								</div>
								<div class="txt">
									<div class="tit_wrap">
										<strong class="sub_tit">페나플로</strong>
										<em>PENAFLOR</em>
									</div>
									<div class="explain">
										<span>: 2014년 올해의 아르헨티나 와인메이커로 선정된 RODOLFO SADLER의 브랜드 </span>
									</div>
								</div>
							</li>
						</ul>
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
	var page = 'brand';
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