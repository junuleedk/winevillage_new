<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
//배너 슬라이드
$('.top_banner .top_banner_slide').slick({
    dots: false,
    arrows: false,
    autoplay: true,
    autoplaySpeed: 8000,
    slidesToShow: 1,
});
$(window).scroll(function () {
    if (!$("#header").hasClass("fixed")) {
        $('.top_banner .top_banner_slide').slick('refresh');
    }
});
$(".top_banner.time_out").hide();
$(".top_banner.time_out").slideDown('300');
setTimeout(function () {
    $(".top_banner.time_out").slideUp('300');
}, 3000);
function onEnterLogin() {
    if (window.event.keyCode === 13) {
        $("#loginBtn").trigger("click");
    }
}
//모바일 gnb toggle menu
$(".mb_gnb_area .menu_list li button").on("click", function () {
    $(this).next("ul").slideToggle();
    $(this).parent("li").siblings().find("ul").slideUp();
});
//테이스트 프로파일 타이틀 주석
$(".ico_note").on("click", function () {
    $(this).toggleClass("on");
});
//선택한 sns 노출
$(".sns_area li").on("click", function () {
    var selSns = $(this).find("span").attr("class");
    $(".sns_area .btn_sel span").attr("class", selSns);
    $(".sns_area").removeClass("on");
});
//선택한 store 노출
$(".store_area li").on("click", function () {
    var selStore = $(this).find("span").text();
    $(".store_area .btn_sel span").text(selStore);
    $(".store_area").removeClass("on");
});
/*공유 및 URL 복사*/
//var img_url = "";
//if (img_url !== '') {
//    img_url = 'https://am.witplus.com/uploads/product/';
//}
function share_sns(e) {
    RC_Method({ page_type: 'product_page', behavior: 'user_action', action: 'sharing' });
    var url = window.document.location.href;
    if (e == 'U') {
        var textarea = document.createElement("textarea");
        document.body.appendChild(textarea);
        textarea.value = url;
        textarea.select();
        document.execCommand("copy");
        document.body.removeChild(textarea);
        alert("URL이 복사되었습니다.");
    } else if (e == 'F') {
        window.open('http://www.facebook.com/sharer.php?u=' + encodeURIComponent(url));
    } else if (e == 'K') {
        Kakao.init('b129fd9215e06b4366c1a76b2c37d98b');
        Kakao.Link.sendDefault({
            objectType: 'feed',
            content: {
                title: '와인나라',
                description: "",
                imageUrl: '<c:url value="/asset/images/shop/default/pc_logo.png" />',
                link: {
                    mobileWebUrl: location.href,
                    webUrl: location.href,
                },
            },
            buttons: [
                {
                    title: '와인나라',
                    link: {
                        mobileWebUrl: location.href,
                    },
                },
            ]
        });
    }
};
$(document).ready(function () {
    $("#loginBtn").on("click", function () {
        if (!$("#login_user_id").val()) {
            alert("아이디를 입력하여 주세요.");
            $("#login_user_id").focus();
            return false;
        }
        if (!$("#login_passwd").val()) {
            alert("비밀번호를 입력하여 주세요.");
            $("#login_passwd").focus();
            return false;
        }
        //Csrf.Set(_CSRF_NAME_); //토큰 초기화
        $.ajax({
            type: 'POST',
            url: "/shop/auth/login_check",
            contentType: "application/x-www-form-urlencoded",  // URL-encoded 형식으로 전송
            data: $("#LoginPostFrm").serialize(),  // Form 데이터를 URL-encoded 형식으로 직렬화
            success: function (response) {
                if (response.result === true) {
                    location.reload();  // 로그인 성공 시 페이지 새로고침
                }
            },
            error: function(xhr) {
                var response = JSON.parse(xhr.responseText);
                if (response.status === 'AUTH_DENIED') {
					alert(response.message);
				} else if (response.status === 'ACCOUNT_DISABLED') {
					if (confirm(response.message)) {
                        // location.href = res.url;
                        $('#dormant_layer').show();
                    }
				} else {
					alert(response.message);
				}
				//if (response.pass_error_count >= 5) {
                //    recaptcha_load();
                //}
            }
        });
    });
    $("#logoutBtn").on('click', function() {
        $.ajax({
            url: '/shop/auth/logout',
            type: 'POST',
            success: function(result) {
                // 로그아웃 성공시 페이지 리로드 또는 리다이렉트
            	location.reload();
            },
            error: function(err) {
                // 에러 발생시 처리할 작업
                console.error('다시 시도해주세요.', err);
            },
        });
    });
});
function logout() {
	$.ajax({
        url: '/shop/auth/logout',
        type: 'POST',
        success: function(result) {
            // 로그아웃 성공시 페이지 리로드 또는 리다이렉트
        	location.reload();
        },
        error: function(err) {
            // 에러 발생시 처리할 작업
            console.error('다시 시도해주세요.', err);
        },
    });
}
$(document).ready(function () {
    get_keyword_list_ajax();
});
/* 대부분의 브라우저에서 시크릿 모드에서 localStorage API 를 사용하려고 하면 에러를 발생시킵니다.
따라서 이러한 동작을 이용하여 브라우저가 시크릿 모드인지 아닌지를 간접적으로 판단할 수 있습니다.
아래 함수는 시크릿 브라우징이 활성화되어 있는 경우 true를 반환합니다. */
function inPrivateBrowsing() {
    try {
        localStorage.test = 2;        
    } catch (e) {
        return e instanceof DOMException && (
            // everything except Firefox
            e.code === 22 ||
            // Firefox
            e.code === 1014 ||
            // test name field too, because code might not be present
            // everything except Firefox
            e.name === 'QuotaExceededError' ||
            // Firefox
            e.name === 'NS_ERROR_DOM_QUOTA_REACHED') &&
            // acknowledge QuotaExceededError only if there's something already stored
            localStorage.length !== 0;
    }
    return false;
}
function isPrivateMode( callback ){
    let fileSys = window.RequestFileSystem || window.webkitRequestFileSystem;

    if ( !fileSys ){
        callback( false );
    } else {
        fileSys(window.TEMPORARY,
            100,
            callback.bind( undefined, false ),
            callback.bind( undefined, true )
        );
    }
}
function html_escape(str) {
    /**
     * 엔티티 코드 매핑을 위한 변수
     * @type {{"`": string, "\"": string, "&": string, "'": string, "<": string, "=": string, ">": string, "/": string}}
     */
     if (typeof str !== 'string') {
         return str;
     }
    let entityMap = {
        '&': '&amp;',
        '<': '&lt;',
        '>': '&gt;',
        '"': '&quot;',
        "'": '&#39;',
        '/': '&#x2F;',
        '`': '&#x60;',
        '=': '&#x3D;'
    };
    for (const [specialCharacter, entityCode] of Object.entries(entityMap)) {
        str = str.split(specialCharacter).join(entityCode);
    }
    return str;
}
function get_keyword_list_ajax() {
    var html = "";
    //Csrf.Set(_CSRF_NAME_); //토큰 초기화
    $.ajax({
        type: "POST",
        url: "<c:url value='/shop/product/get_keyword_list_ajax.do' />",
        data: { mode: 'list' },
        success: function (res) {
            console.log(res);
            if (typeof (res) == 'string') { res = JSON.parse(res); }
            if (res.status == 'ok') {
                var keyword_list = res.keyword_list; // 서버에서 가져온 리스트
                if (keyword_list && keyword_list.length > 0) {                    
                    for (var i = 0; i < keyword_list.length; i++) {
                        html += '<li><span onclick="sch_item(';
                        html += "'" + html_escape(keyword_list[i]) + "'";
                        html += ')" style="cursor:pointer;">' + html_escape(keyword_list[i]) + '</span>';
                        html += '<button type="button" class="del_btn" onclick="del_item(';
                        html += "'" + keyword_list[i] + "'";
                        html += ')"></button></li>';
                    }
                    $(".result_list").empty();
                    $(".result_list").html(html);
                } else {
                    $(".result_list").empty();
                    $(".result_list").html('<li id="nodata">최근검색어 내역이 없습니다.</li>');
                }
            } else if (res.status == 'empty') {
                $(".result_list").html('<li id="nodata">최근검색어 내역이 없습니다.</li>');
            } else {
            	//alert(res.msg);
                return;
            }
        },
        error: function (res) {
            console.log("최근 검색어 리스트에 오류가 발생했습니다.");
			// alert(res.responseText);
        }
    });
}
// 키워드 개별 삭제
function del_item(keyword) {
    var html = "";
    //Csrf.Set(_CSRF_NAME_); //토큰 초기화
    $.ajax({
        type: 'POST',
        url: "<c:url value='/shop/product/update_keyword_ajax.do' />",
        dataType: 'json',
        data: { keyword: keyword, mode: 'single' },
        success: function (res) {
            if (typeof (res) == 'string') { res = JSON.parse(res); }
            if (res.status == 'ok') {
                var keyword_list = res.keyword_list;
                if (keyword_list.length > 0) {
                    for (var i = 0; i < keyword_list.length; i++) {
                        html += '<li><span onclick="sch_item(';
                        html += "'" + keyword_list[i] + "'";
                        html += ')" style="cursor:pointer;">' + keyword_list[i] + '</span>';
                        html += '<button type="button"  class="del_btn" onclick="del_item(';
                        html += "'" + keyword_list[i] + "'";
                        html += ')"></button></li>';
                    }
                    $("#result_list").empty();
                    $("#result_list").html(html);
                } else {
                    $("#result_list").empty();
                    $("#result_list").html('<li id="nodata">최근검색어 내역이 없습니다.</li>');
                }
            }
        },
        error: function (res) {
            alert("검색 키워드 삭제시 에러가 발생했습니다.");
            alert(res.responseText);
        }
    });
}
// 키워드 전체 삭제
function all_del_item() {
	//Csrf.Set(_CSRF_NAME_); //토큰 초기화
    $.ajax({
        type: 'POST',
        url: "/shop/product/update_keyword_ajax.do",
        dataType: 'json',
        data: { mode: 'all' },
        success: function (res) {
            if (res.status == 'ok') {
                $("#result_list").empty();
                $("#result_list").html('<li id="nodata">최근검색어 내역이 없습니다.</li>');
            }
        },
        error: function (res) {
            alert("검색 키워드 삭제시 에러가 발생했습니다.");
            alert(res.responseText);
        }
    });
}
// 선택 키워드 검색
function sch_item(keyword) {
    location.href = '/shop/product/search_product_lists.do?keyword=' + keyword;
}
$('.social_login .social_btn.naver').click(function () {
    Cookie.Set('join_gb', 'N', 1, true);
    Cookie.Set('sns_btn_type', 'L', 1, true);
    Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
    Cookie.Set('error_url', location.href, 1, true);
    if ($('#login_return_url_param').val()) {
        Cookie.Set('login_return_url_param', $('#login_return_url_param').val(), 1, true);
    }
    location.href = '/shop/auth/oauth';
});
$('.social_login .social_btn.kakao').click(function () {
    Cookie.Set('join_gb', 'K', 1, true);
    Cookie.Set('sns_btn_type', 'L', 1, true);
    Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
    Cookie.Set('error_url', location.href, 1, true);
    if ($('#login_return_url_param').val()) {
        Cookie.Set('login_return_url_param', $('#login_return_url_param').val(), 1, true);
    }
    location.href = '/shop/auth/oauth';
});
$('.social_login .social_btn.google').click(function () {
    Cookie.Set('join_gb', 'G', 1, true);
    Cookie.Set('sns_btn_type', 'L', 1, true);
    Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
    Cookie.Set('error_url', location.href, 1, true);
    if ($('#login_return_url_param').val()) {
        Cookie.Set('login_return_url_param', $('#login_return_url_param').val(), 1, true);
    }
    location.href = '/shop/auth/oauth';
});
$('.social_login .social_btn.face').click(function () {
    Cookie.Set('join_gb', 'F', 1, true);
    Cookie.Set('sns_btn_type', 'L', 1, true);
    Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
    Cookie.Set('error_url', location.href, 1, true);
    if ($('#login_return_url_param').val()) {
        Cookie.Set('login_return_url_param', $('#login_return_url_param').val(), 1, true);
    }
    location.href = '/shop/auth/oauth';
});
//PC 모바일 구분
if (chkDevice.isPC()) {
    $("#path_gb").val('WEB');
} else {
    $("#path_gb").val('MOBILE');
}
/**
 * 매장 선택
 * @param {[type]} store_code [description]
 */
function setHeaderStore(store_code) {
    Csrf.Set(_CSRF_NAME_); //토큰 초기화
    $.ajax({
        type: "POST",
        url: "/shop/auth/store_setting_ajax",
        data: { "store_code": store_code },
        success: function (res) {
            console.log(res);
            location.reload();
        },
        error: function (res) {
            console.log(res.responseText);
        }
    });
}
/*
 * 바코드 스크립트
 */
window.addEventListener("flutterInAppWebViewPlatformReady", function (event) {
    //호출코드 (호출가능시기확인 후 호출가능)
});
function jsOpenBarcode() {
    window.flutter_inappwebview.callHandler('scanBarcode');
}
//응답코드
function resultBarcode(barcode) {
    // console.log("barcode: ",barcode);
    var form = document.BarcodeForm;
    form.barcode.value = barcode;
    // form.submit();
    location.href = '/shop/order/barcode_view?barcode=' + barcode;
}
function openProfile() {
    Csrf.Set(_CSRF_NAME_); //토큰 초기화
    $.ajax({
        type: "POST",
        url: "/shop/mypage/shopping/wine_profile_ajax",
        data: {},
        success: function (res) {
            $(".wine_profile_layer").html(res);
            commonUI.layer.open('wine_profile_layer');
        },
        error: function (res) {
            console.log(res.responseText);
        }
    });
}
function checkUserAndRedirect(event) {
    event.preventDefault(); // Prevent default link behavior
    var sesId = "";
    // Check if user data contains user_id
    if (sesId) {
        // If user_id exists, redirect to the link's href
        window.location.href = event.target.href;
    } else {
        // If user_id doesn't exist, open the login layer
        commonUI.layer.open('login_layer');
    }
}
// Find the anchor element and attach the event listener
const clubLink = document.querySelector('a.club-link');
if (clubLink) {
    clubLink.addEventListener('click', checkUserAndRedirect);
}
// Find the anchor element for MOOD LIVE and attach the event listener
const moodLiveLink = document.querySelector('a.mood-live-link');
if (moodLiveLink) {
    moodLiveLink.addEventListener('click', checkUserAndRedirect);
}
</script>