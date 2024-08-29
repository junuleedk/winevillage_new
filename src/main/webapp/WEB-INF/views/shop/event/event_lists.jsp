<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINENARA 1987 ㅣ PROMOTION </title>
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

<!-- header -->
<sec:authorize access="!isAuthenticated()">
<%@ include file="../common/header.jsp" %>
</sec:authorize>
<sec:authorize access="isAuthenticated()">
<%@ include file="../common/header_loggedin.jsp" %>
</sec:authorize>
<!-- //header -->
<%@ include file="../common/layer.jsp" %>
<%@ include file="../common/script.jsp" %>

<!-- contents -->
<section id="contents">
<div class="lnb comm_lnb bg_lnb event_lnb lnb_wrap">
	<div class="pc_hidden">
		<a href="javascript:history.go(-1);" class="prev">이전</a>
		<div class="select_brand js_select" id="select_brand">
			<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>이달의 프로모션</span></button>
			<ul class="mb_lnb_lists">
				<li><a href="/shop/event/event_end">완료된 프로모션</a></li>
				<!-- <li><a href="/shop/event/theme/theme_ing_lists">진행중인 기획전</a></li>
                <li><a href="/shop/event/theme_end/theme_end_lists">종료된 기획전</a></li> -->
				<!-- <li><a href="/shop/event/review/review_lists">이벤트 당첨자 발표</a></li> -->
				<!-- <li><a href="/shop/event/theme_review/theme_review_lists">기획전 당첨자 발표</a></li> -->
			</ul>
		</div>
	</div>
	<div class="pc_lnb mb_hidden">
		<div class="page_tit">
			<h2><span>PROMOTION</span></h2>
		</div>
		<ul class="menu tab2">
			<li class="on"><a href="/shop/event/event_lists"><span>이달의 프로모션</span></a></li>
			<li><a href="/shop/event/event_end"><span>완료된 프로모션</span></a></li>
			<!-- <li><a href="/shop/event/theme/theme_ing_lists">진행중인 기획전</a></li>
            <li><a href="/shop/event/theme_end/theme_end_lists">종료된 기획전</a></li> -->
			<!-- <li><a href="/shop/event/review/review_lists">이벤트 당첨자 발표</a></li> -->
			<!-- <li><a href="/shop/event/theme_review/theme_review_lists">기획전 당첨자 발표</a></li> -->
		</ul>
	</div>
</div>
<div class="wrap">
	<div class="content event event_lists_page">
		<div class="event_lists_wrap">
			<ul id="event_list">
                <li>
                    <a href="/shop/event/event_view?no=38">
                        <div class="img">
                            <picture>
	                            <!--[if IE 9]><video style="display: none;"><![endif]-->
	                            <source srcset="../../uploads/event/893226372e1efb26ce722ea95e4d648d.jpg" media="(min-width:768px)">
	                            <!-- pc이미지 -->
	                            <source srcset="../../uploads/event/893226372e1efb26ce722ea95e4d648d.jpg" media="(max-width:767px)">
	                            <!-- mb이미지 -->
	                            <!--[if IE 9]></video><![endif]-->
	                            <img src="../../uploads/event/893226372e1efb26ce722ea95e4d648d.jpg" alt="">
	                            <!-- pc이미지 -->
                            </picture>
                        </div>
                        <div class="text">
                            <strong class="tit">와인나라 명동점(MOWa) 오픈 프로모션</strong>
                            <span class="con"></span>
                            <i class="date">2024.06.14 ~ 2024.06.30</i>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="/shop/event/event_view?no=390">
                        <div class="img">
                            <picture>
	                            <!--[if IE 9]><video style="display: none;"><![endif]-->
	                            <source srcset="../../uploads/event/2f4ec6b6f24a2a8286506606877b6d51.jpg" media="(min-width:768px)">
	                            <!-- pc이미지 -->
	                            <source srcset="../../uploads/event/2f4ec6b6f24a2a8286506606877b6d51.jpg" media="(max-width:767px)">
	                            <!-- mb이미지 -->
	                            <!--[if IE 9]></video><![endif]-->
	                            <img src="../../uploads/event/2f4ec6b6f24a2a8286506606877b6d51.jpg" alt="">
	                            <!-- pc이미지 -->
                            </picture>
                        </div>
                        <div class="text">
                            <strong class="tit">파크 하얏트 서울 X 하트포드 코트 와인 페어링 디너</strong>
                            <span class="con"></span>
                            <i class="date">2024.06.17 ~ 2024.06.27</i>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="/shop/event/event_view?no=389">
                        <div class="img">
                            <picture>
	                            <!--[if IE 9]><video style="display: none;"><![endif]-->
	                            <source srcset="../../uploads/event/6880948084308d10f4639d1da44e8b12.png" media="(min-width:768px)">
	                            <!-- pc이미지 -->
	                            <source srcset="../../uploads/event/6880948084308d10f4639d1da44e8b12.png" media="(max-width:767px)">
	                            <!-- mb이미지 -->
	                            <!--[if IE 9]></video><![endif]-->
	                            <img src="../../uploads/event/6880948084308d10f4639d1da44e8b12.png" alt="">
	                            <!-- pc이미지 -->
                            </picture>
                        </div>
                        <div class="text">
                            <strong class="tit">테이스팅 온 서래 'Tasting On Seorae'</strong>
                            <span class="con"></span>
                            <i class="date">2024.06.15 ~ 2024.06.22</i>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="/shop/event/event_view?no=387">
                        <div class="img">
                            <picture>
	                            <!--[if IE 9]><video style="display: none;"><![endif]-->
	                            <source srcset="../../uploads/event/c3774853aa78bd8cfe02490a07b320a6.jpg" media="(min-width:768px)">
	                            <!-- pc이미지 -->
	                            <source srcset="../../uploads/event/c3774853aa78bd8cfe02490a07b320a6.jpg" media="(max-width:767px)">
	                            <!-- mb이미지 -->
	                            <!--[if IE 9]></video><![endif]-->
	                            <img src="../../uploads/event/c3774853aa78bd8cfe02490a07b320a6.jpg" alt="">
	                            <!-- pc이미지 -->
                            </picture>
                        </div>
                        <div class="text">
                            <strong class="tit">피노누아 나이트 (6월 시음회)</strong>
                            <span class="con"></span>
                            <i class="date">2024.06.11 ~ 2024.06.28</i>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="/shop/event/event_view?no=385">
                        <div class="img">
                            <picture>
	                            <!--[if IE 9]><video style="display: none;"><![endif]-->
	                            <source srcset="../../uploads/event/ad5d21e5b0d49bc75ab2951d63e8b3d3.png" media="(min-width:768px)">
	                            <!-- pc이미지 -->
	                            <source srcset="../../uploads/event/ad5d21e5b0d49bc75ab2951d63e8b3d3.png" media="(max-width:767px)">
	                            <!-- mb이미지 -->
	                            <!--[if IE 9]></video><![endif]-->
	                            <img src="../../uploads/event/ad5d21e5b0d49bc75ab2951d63e8b3d3.png" alt="">
	                            <!-- pc이미지 -->
                            </picture>
                        </div>
                        <div class="text">
                            <strong class="tit">빌라엠, 여름 시리즈 출시 Colorful Summer Story </strong>
                            <span class="con"></span>
                            <i class="date">2024.06.07 ~ 2024.08.31</i>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="/shop/event/event_view?no=382">
                        <div class="img">
                            <picture>
	                            <!--[if IE 9]><video style="display: none;"><![endif]-->
	                            <source srcset="../../uploads/event/694e49573e56a70cc40c80811d67027f.jpg" media="(min-width:768px)">
	                            <!-- pc이미지 -->
	                            <source srcset="../../uploads/event/694e49573e56a70cc40c80811d67027f.jpg" media="(max-width:767px)">
	                            <!-- mb이미지 -->
	                            <!--[if IE 9]></video><![endif]-->
	                            <img src="../../uploads/event/694e49573e56a70cc40c80811d67027f.jpg" alt="">
	                            <!-- pc이미지 -->
                            </picture>
                        </div>
                        <div class="text">
                            <strong class="tit">6월 이달의 와인</strong>
                            <span class="con"></span>
                            <i class="date">2024.06.01 ~ 2024.06.30</i>
                        </div>
                    </a>
                </li>
                <script>
                // var page = 1;
                // var cnt = 6;
                // // alert(page + " : " + cnt);
                // if(page == 1 && cnt < 1){
                //     $('#more_btn').hide();
                // }else if(page > 1 && cnt < 1){  
                //     alert('마지막 글입니다.');
                //     $('#more_btn').hide();
                // }else{
                //     $('#more_btn').show();
                // }
                </script>
                <li>
                    <a href="/shop/event/event_view?no=388">
                        <div class="img">
                            <picture>
	                            <!--[if IE 9]><video style="display: none;"><![endif]-->
	                            <source srcset="../../uploads/event/6d79f4c44e4f03064ff7e28128762856.jpg" media="(min-width:768px)">
	                            <!-- pc이미지 -->
	                            <source srcset="../../uploads/event/6d79f4c44e4f03064ff7e28128762856.jpg" media="(max-width:767px)">
	                            <!-- mb이미지 -->
	                            <!--[if IE 9]></video><![endif]-->
	                            <img src="../../uploads/event/6d79f4c44e4f03064ff7e28128762856.jpg" alt="">
	                            <!-- pc이미지 -->
                            </picture>
                        </div>
                        <div class="text">
                            <strong class="tit">와인나라 명동점 오픈</strong>
                            <span class="con"></span>
                            <i class="date">2024.06.01 ~ 2024.06.30</i>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="/shop/event/event_view?no=380">
                        <div class="img">
                            <picture>
	                            <!--[if IE 9]><video style="display: none;"><![endif]-->
	                            <source srcset="../../uploads/event/61a59acc20ed990aeb230da0f07f80b9.png" media="(min-width:768px)">
	                            <!-- pc이미지 -->
	                            <source srcset="../../uploads/event/61a59acc20ed990aeb230da0f07f80b9.png" media="(max-width:767px)">
	                            <!-- mb이미지 -->
	                            <!--[if IE 9]></video><![endif]-->
	                            <img src="../../uploads/event/61a59acc20ed990aeb230da0f07f80b9.png" alt="">
	                            <!-- pc이미지 -->
                            </picture>
                        </div>
                        <div class="text">
                            <strong class="tit">Chef's Kitchen Mariage 셰프의 키친 마리아주</strong>
                            <span class="con"></span>
                            <i class="date">2024.05.29 ~ 2024.06.26</i>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="/shop/event/event_view?no=379">
                        <div class="img">
                            <picture>
	                            <!--[if IE 9]><video style="display: none;"><![endif]-->
	                            <source srcset="../../uploads/event/71b82813a51b2ab5cbf4d6b8a42dd55a.jpg" media="(min-width:768px)">
	                            <!-- pc이미지 -->
	                            <source srcset="../../uploads/event/71b82813a51b2ab5cbf4d6b8a42dd55a.jpg" media="(max-width:767px)">
	                            <!-- mb이미지 -->
	                            <!--[if IE 9]></video><![endif]-->
	                            <img src="../../uploads/event/71b82813a51b2ab5cbf4d6b8a42dd55a.jpg" alt="">
	                            <!-- pc이미지 -->
                            </picture>
                        </div>
                        <div class="text">
                            <strong class="tit">와인나라 브랜드 위크</strong>
                            <span class="con"></span>
                            <i class="date">2024.05.27 ~ 2024.06.23</i>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="/shop/event/event_view?no=375">
                        <div class="img">
                            <picture>
	                            <!--[if IE 9]><video style="display: none;"><![endif]-->
	                            <source srcset="../../uploads/event/2cb01871a323ddccebe01434b37024c9.png" media="(min-width:768px)">
	                            <!-- pc이미지 -->
	                            <source srcset="../../uploads/event/2cb01871a323ddccebe01434b37024c9.png" media="(max-width:767px)">
	                            <!-- mb이미지 -->
	                            <!--[if IE 9]></video><![endif]-->
	                            <img src="../../uploads/event/2cb01871a323ddccebe01434b37024c9.png" alt="">
	                            <!-- pc이미지 -->
                            </picture>
                        </div>
                        <div class="text">
                            <strong class="tit">에라주리즈 믹스&amp;맥스 시즌3</strong>
                            <span class="con"></span>
                            <i class="date">2024.05.01 ~ 2024.06.30</i>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="/shop/event/event_view?no=356">
                        <div class="img">
                            <picture>
	                            <!--[if IE 9]><video style="display: none;"><![endif]-->
	                            <source srcset="../../uploads/event/375820fef41f7974b5cfaa41b666d0e1.png" media="(min-width:768px)">
	                            <!-- pc이미지 -->
	                            <source srcset="../../uploads/event/375820fef41f7974b5cfaa41b666d0e1.png" media="(max-width:767px)">
	                            <!-- mb이미지 -->
	                            <!--[if IE 9]></video><![endif]-->
	                            <img src="../../uploads/event/375820fef41f7974b5cfaa41b666d0e1.png" alt="">
	                            <!-- pc이미지 -->
                            </picture>
                        </div>
                        <div class="text">
                            <strong class="tit">MOWa 보틀샵 오픈 프로모션</strong>
                            <span class="con"></span>
                            <i class="date">2024.03.29 ~ 2024.12.30</i>
                        </div>
                    </a>
                </li>
                <script>
                // var page = 2;
                // var cnt = 5;
                // // alert(page + " : " + cnt);
                // if(page == 1 && cnt < 1){
                //     $('#more_btn').hide();
                // }else if(page > 1 && cnt < 1){  
                //     alert('마지막 글입니다.');
                //     $('#more_btn').hide();
                // }else{
                //     $('#more_btn').show();
                // }
                </script>
                <script>
                // var page = 3;
                // var cnt = 0;
                // // alert(page + " : " + cnt);
                // if(page == 1 && cnt < 1){
                //     $('#more_btn').hide();
                // }else if(page > 1 && cnt < 1){  
                //     alert('마지막 글입니다.');
                //     $('#more_btn').hide();
                // }else{
                //     $('#more_btn').show();
                // }
                </script>
                <script>
                // var page = 4;
                // var cnt = 0;
                // // alert(page + " : " + cnt);
                // if(page == 1 && cnt < 1){
                //     $('#more_btn').hide();
                // }else if(page > 1 && cnt < 1){  
                //     alert('마지막 글입니다.');
                //     $('#more_btn').hide();
                // }else{
                //     $('#more_btn').show();
                // }
                </script>
                <script>
                // var page = 5;
                // var cnt = 0;
                // // alert(page + " : " + cnt);
                // if(page == 1 && cnt < 1){
                //     $('#more_btn').hide();
                // }else if(page > 1 && cnt < 1){  
                //     alert('마지막 글입니다.');
                //     $('#more_btn').hide();
                // }else{
                //     $('#more_btn').show();
                // }
                </script>
                <script>
                // var page = 6;
                // var cnt = 0;
                // // alert(page + " : " + cnt);
                // if(page == 1 && cnt < 1){
                //     $('#more_btn').hide();
                // }else if(page > 1 && cnt < 1){  
                //     alert('마지막 글입니다.');
                //     $('#more_btn').hide();
                // }else{
                //     $('#more_btn').show();
                // }
                </script>
                <script>
                // var page = 7;
                // var cnt = 0;
                // // alert(page + " : " + cnt);
                // if(page == 1 && cnt < 1){
                //     $('#more_btn').hide();
                // }else if(page > 1 && cnt < 1){  
                //     alert('마지막 글입니다.');
                //     $('#more_btn').hide();
                // }else{
                //     $('#more_btn').show();
                // }
                </script>
                <script>
                // var page = 8;
                // var cnt = 0;
                // // alert(page + " : " + cnt);
                // if(page == 1 && cnt < 1){
                //     $('#more_btn').hide();
                // }else if(page > 1 && cnt < 1){  
                //     alert('마지막 글입니다.');
                //     $('#more_btn').hide();
                // }else{
                //     $('#more_btn').show();
                // }
                </script>
                <script>
                // var page = 9;
                // var cnt = 0;
                // // alert(page + " : " + cnt);
                // if(page == 1 && cnt < 1){
                //     $('#more_btn').hide();
                // }else if(page > 1 && cnt < 1){  
                //     alert('마지막 글입니다.');
                //     $('#more_btn').hide();
                // }else{
                //     $('#more_btn').show();
                // }
                </script>
            </ul>
			<!-- <button type="button" class="btn_txt" id="more_btn" onclick="get_event_list('more');"><span>더보기</span></button> -->
		</div>
		<!--//event-lists-wrap-->
	</div>
	<!--//event event_lists_page-->
</div>
<form action="https://www.winenara.com/shop/event/event_list_ajax" method="post" id="listFrm" accept-charset="utf-8">
	<input type="hidden" name="witplus_csrf_token" value="8ed9b6bc4454137332928b1e57427864"/>
	<input type="hidden" name="page" id="page" value="1">
	<input type="hidden" name="stat" id="stat" value="1">
</form>
<script>
    $(document).ready(function(){
        get_event_list();
        //스크롤 바닥 감지
        window.addEventListener('scroll', moreShowList);
        function moreShowList() {
        // 	if((window.innerHeight + window.pageYOffset) >= document.querySelector("body").offsetHeight - window.innerHeight) {
            if ($(window).scrollTop() >= $(document).height() - ($(window).height() * 2.3 )) {
                get_event_list('more');
            }
        }
        // if(더 호출할 것이 없을 때 스크롤 기능 제거){
        //      window.removeEventListener('scroll', moreShowList);
        // }
    });
    function get_event_list(mode){
        Csrf.Set(_CSRF_NAME_);
        if(mode == 'more'){
            var page = $('#page').val();
            page++;
            $('#page').val(page);
        }
        var params = $("#listFrm").serialize();
        $.ajax({
            url : "/shop/event/event_list_ajax",
            type : "post",
            data : params,
            success:function(data){
                // console.log(data);
                $('#event_list').append(data);
                // if(더 호출할 것이 없을 때 스크롤 기능 제거){
                //      window.removeEventListener('scroll', moreShowList);
                // }
            },error:function(request,status,error){
                console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            }
        })
    }
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
	var page = 'event_lists';
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