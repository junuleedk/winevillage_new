<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINENARA 1987 ㅣ 와인의 모든 것이 있는 곳 와인나라입니다! </title>
<%@ include file="shop/common/common.jsp" %>
</head>
<body>
<section id="contents" style="margin-top: 188px;">
    <style>
        .header,
        .footer{display:none}
        #contents{margin-top:0 !important}
    </style>
    <div class="content intro_page">
        <div class="intro_area">
            <div class="txt_area">
                <div class="inner_box">
                    <h2 class="logo"><a href="#none"><img src="asset/images/shop/default/intro_logo.png" alt="인트로 와인나라"></a></h2>
                    <p class="txt">
                        만 19세 이상 <br class="pc_hidden">
                        음주 가능한 연령입니까 ?
                    </p>
                    <div class="btn_area col2">
                        <!-- <a href="javascript:setAdult();" class="btn_txt btn_black">예</a> -->
                        <a href="shop/main.do" class="btn_txt btn_black">예</a>
                        <button type="button" onclick="alert('19세 미만은 이용하실 수 없습니다.')" class="btn_txt">아니요</button>
                    </div>
                    <div class="sub_area">
                        <p class="sub_txt">
                            이 사이트는 만 19세 이상만 입장 가능합니다.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- page_script -->
    <script>
        /**
         * 성인 인증 세션
         */
        function setAdult() {
            Csrf.Set(_CSRF_NAME_); //토큰 초기화
            $.ajax({
                type: "POST",
                url : "/shop/auth/adult_setting_ajax",
                data: {},
                success : function (res) {
                    location.href='/shop/main';
                },
                error: function (res) {
                    console.log(res.responseText);
                }
            });
        }
    </script>
    <!-- //page_script -->
</section>
</body>
</html>