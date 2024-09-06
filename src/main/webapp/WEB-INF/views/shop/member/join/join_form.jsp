<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINEVILLAGE 2024 ㅣ 회원가입</title>
<%@ include file="../../common/common.jsp" %>
</head>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
<%@ include file="../../common/header.jsp" %>
<!-- //header -->
</sec:authorize>
<sec:authorize access="isAuthenticated()">
<!-- header - 로그인 상태 -->
<%@ include file="../../common/header_loggedin.jsp" %>
<!-- //header - 로그인 상태 -->
</sec:authorize>
<%@ include file="../../common/layer.jsp" %>
<%@ include file="../../common/script.jsp" %>

<!-- contents -->
<section id="contents">
<div class="lnb member_lnb lnb_wrap step_wrap">
	<div class="pc_hidden">
		<a href="javascript:history.go(-1);" class="prev">이전</a>
		<div class="select_brand js_select" id="select_brand">
			<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>회원가입</span></button>
			<ul class="mb_lnb_lists">
				<li><a href="/shop/member/join/law_agreement">약관동의 및 소셜인증</a></li>
			</ul>
		</div>
	</div>
	<div class="pc_lnb mb_hidden">
		<div class="page_tit">
			<h2><span>회원가입</span></h2>
			<ul>
				<li class="">1. 이용약관 동의</li>
				<li class="on">2. 회원정보 입력</li>
				<li class="">3. 회원가입 완료</li>
			</ul>
		</div>
	</div>
</div>
<div class="wrap">
	<form action="<c:url value='/shop/member/join/join_proc' />" name='join_form' id='join_form' method="post" accept-charset="utf-8">
		<input type="hidden" name="join_agreement_age" value="true"/>
		<input type="hidden" name="join_agreement_service" value="true"/>
		<input type="hidden" name="join_agreement_private" value="true"/>
		<input type="hidden" name="join_agreement_marketing_1" value="false"/>
		<input type="hidden" name="join_agreement_marketing_2" value="false"/>
		<input type="hidden" name="join_agreement_sms" value="false"/>
		<input type="hidden" name="join_agreement_email" value="false"/>
		<input type="hidden" name="join_gb" value="G"/>
		<input type="hidden" name="witplus_csrf_token" value="7a1ceec33cce32b5436817ba8c49a538"/>
		<div class="content member join join_form_page">
			<div class="inner">
				<!-- <div class="connect_info">
					<p class="tit">인증된 소셜계정</p>
					<div class="connect">
						<img src="../../../asset/images/shop/default/ico_google.png" alt="구글 로고">
						<span>구글 (gogek1234@gmail.com)</span>
						<input type="hidden" name="google_id" value="117271153815721505296">
					</div>
					<div class="connect">
						<img src="../../../asset/images/shop/default/ico_naver.png" alt="네이버 로고">
						<span>네이버 (gogek1234@naver.com)</span>
						<input type="hidden" name="naver_id" value="Ph46x1ITfw7jCExYqJXhyjXOQgrAH8YoGf74vT7aFYk">
					</div>
					<div class="connect">
						<img src="../../../asset/images/shop/default/ico_kakao.png" alt="카카오 로고">
						<span>카카오 (gogek1234@gmail.com)</span>
						<input type="hidden" name="kakao_id" value="3603720309">
					</div>
				</div> -->
				<div class="connect_info" id="auth_div">
					<div class="form_box">
						<div class="">
							<button type="button" class="btn_txt btn_bgray" id="auth_btn" onclick="return auth_type_check();">성인인증</button>
							<p>
								정보통신만 이용 촉진 및 정보보호 등에 관한 법률 및 청소년 보호법의 규정에 의하여 <br class="mb_hidden">
								19세 미만의 청소년은 이용할 수 없습니다.
							</p>
						</div>
					</div>
				</div>
				<iframe id="kcp_cert" name="kcp_cert" width="100%" height="700" frameborder="0" scrolling="no" style="display:none">
				</iframe>
				<div class="form_area">
					<ul>
						<li>
							<div class="l_tit">
								<label for="user_nm">이름*</label>
							</div>
							<div class="form_box">
								<!-- <div class="form_box error">
							<div class="form_box success"> -->
								<input type="text" id="memberName" name="memberName" placeholder="이름을 입력해주세요." value="">
								<p class="input_info_txt">
								</p>
							</div>
						</li>
						<li>
							<div class="l_tit">
								<label for="user_birth">생년월일*</label>
							</div>
							<div class="form_box">
								<!-- <div class="form_box error">
							<div class="form_box success"> -->
								<input type="text" id="memberBirth" name="memberBirth" placeholder="생년월일을 입력해주세요. (ex yyyymmdd)" maxlength="8" oninput="this.value=this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');" value="">
								<!--p class="input_info_txt">생년월일을 숫자 8자리로 입력하세요.</p-->
							</div>
						</li>
						<li class="gender_li">
							<div class="l_tit">
								<label for="user_gender" style="display:none;" id="gender_label">성별*</label>
							</div>
							<div class="form_box">
								<div class="gender_box">
									<div class="box men" style="display:none;">
										<input type="radio" name="gender" id="gender_men" value="M">
										<label for="gender_men">남성</label>
									</div>
									<div class="box women" style="display:none;">
										<input type="radio" name="gender" id="gender_women" value="F">
										<label for="gender_women">여성</label>
									</div>
								</div>
							</div>
						</li>
						<li class="tel_li">
							<div class="l_tit">
								<label for="phone">휴대폰번호*</label>
							</div>
							<div class="form_box">
								<div class="tel_box">
									<input type="text" id="memberPhoneNumber" name="memberPhoneNumber" placeholder="'-'제외한 숫자만 입력해주세요." maxlength="11" oninput="this.value=this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');" value="">
									<!-- <button type="button" class="btn_txt btn_bgray btn_m_view" onclick="commonUI.layer.open('m_view_layer')">통합회원 조회</button> -->
									<button type="button" class="btn_txt btn_bgray btn_m_view" onclick="chk_wine_member();">휴대폰 인증</button>
									<p class="input_info_txt">
									</p>
								</div>
								<div class="tel_box">
									<input type="text" id="phone" name="phone" placeholder="인증번호를 입력해주세요." maxlength="11" oninput="this.value=this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');" value="">
									<!-- <button type="button" class="btn_txt btn_bgray btn_m_view" onclick="commonUI.layer.open('m_view_layer')">통합회원 조회</button> -->
									<button type="button" class="btn_txt btn_bgray btn_m_view" onclick="chk_wine_member();">확인</button>
									<p class="input_info_txt">
									</p>
								</div>
							</div>
						</li>
						<li class="id_li">
							<div class="l_tit">
								<label for="user_id">아이디*</label>
								<p class="input_info_txt" id="id_length_chk">
									5~20자의 영문 혹은 영문+숫자 조합
								</p>
							</div>
							<div class="form_box">
								<!-- <div class="form_box error">
							<div class="form_box success"> -->
								<input type="text" id="memberId" name="memberId" placeholder="5~20자의 영문 혹은 영문+숫자 조합" value="">
								<button type="button" class="btn_txt btn_bgray btn_m_view" onclick="chk_wine_member();">중복확인</button>
								<p class="input_info_txt" id="id_chk" style="display:none;">
									입력해 주신 아이디는 사용중인 아이디입니다.
								</p>
							</div>
						</li>
						<li>
							<div class="l_tit">
								<label for="user_pass_01">비밀번호*</label>
								<p class="input_info_txt" id="pw_chk">
									영문+숫자+특수문자 조합 8자 이상(공백제외)
								</p>
							</div>
							<div class="form_box">
								<!-- <div class="form_box error">
							<div class="form_box success"> -->
								<input type="password" id="memberPassword" name="memberPassword" placeholder="영문 + 숫자 + 특수문자 조합 8자 이상" autocomplete="off">
							</div>
						</li>
						<li>
							<div class="l_tit">
								<label for="user_pass_02">비밀번호 확인*</label>
							</div>
							<div class="form_box">
								<!-- <div class="form_box error">
							<div class="form_box success"> -->
								<input type="password" id="memberPassword2" name="memberPassword2" placeholder="비밀번호를 한번 더 입력해주세요." autocomplete="off">
								<!-- <p class="input_info_txt">동일한 비밀번호를 입력했습니다.</p> -->
								<p class="input_info_txt">
								</p>
							</div>
						</li>
						<li>
							<div class="l_tit">
								<label for="user_email">이메일*</label>
							</div>
							<div class="form_box">
								<!-- <div class="form_box error">
							<div class="form_box success"> -->
								<input type="text" id="memberEmail" name="memberEmail" placeholder="이메일을 입력해주세요." value="">
								<p class="input_info_txt">
								</p>
							</div>
						</li>
						<li class="add_li">
							<div class="l_tit">
								<label for="memberPostcode">주소</label>
							</div>
							<div class="form_box">
								<div class="add_box_01">
									<input type="text" id="memberPostcode" name="memberPostcode" placeholder="주소를 입력해주세요.">
									<button type="button" class="btn_txt btn_bgray" id="addr_open">우편번호찾기</button>
								</div>
								<div class="add_box_02">
									<input type="text" id="memberAddress1" name="memberAddress1">
									<input type="text" id="memberAddress2" name="memberAddress2">
								</div>
							</div>
						</li>
						<li class="marry_li gender_li">
							<div class="l_tit">
								<label>결혼여부</label>
							</div>
							<div class="form_box">
								<div class="marry_box gender_box">
									<div class="box marry_y">
										<input type="radio" name="memberMaritalStatus" id="memberMaritalStatus_Y" value="Y">
										<label for="memberMaritalStatus_Y">기혼</label>
									</div>
									<div class="box marry_n">
										<input type="radio" name="memberMaritalStatus" id="memberMaritalStatus_N" value="N">
										<label for="memberMaritalStatus_N">미혼</label>
									</div>                                
								</div>
							</div>
						</li>
						<li class="marry_date_li" style="display:none;">
							<div class="l_tit">
								<label for="marry_date">결혼기념일</label>
							</div>
							<div class="form_box">
								<input type="text" name="memberAnniversary" id="memberAnniversary" placeholder="yyyymmdd 형식으로 입력해주세요." maxlength="8" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
								<p class="input_info_txt">결혼기념일을 숫자 8자리로 입력하세요.</p>
							</div>                     
						</li>
						<li class="chk_li">
							<div class="l_tit">
								<label for="store_cd">매장*</label>
							</div>
							<div class="form_box">
								<select name="memberStore" id="memberStore">
									<option value="">▒ 선택 ▒</option>
									<option value="200000784">온라인</option>
									<option value="200000762">경희궁점</option>
									<option value="200000084">코엑스점</option>
									<option value="200000111">서래마을점</option>
									<option value="200000779">일산점</option>
									<option value="200000782">홍대점</option>
									<option value="200000792">시청점</option>
									<option value="200000793">성수점</option>
									<option value="200000796">압구정점</option>
									<option value="200000795">신용산점</option>
									<option value="200000803">송도점</option>
									<option value="200000804">명동점(모와)</option>
								</select>
							</div>
						</li>
						<!--
						<li class="marry_li gender_li">
							<div class="l_tit">
								<label for="reference_id">추천인 코드</label>
							</div>
							<div class="l_tit">
								<input type="text" name="reference_id" id="reference_id" placeholder="추천인 코드를 입력해주세요.">
							</div>                     
						</li>
						-->
						<li class="marry_li gender_li">
							<div class="l_tit">
								<label for="biz_reference_code">프로모션 인증코드</label>
							</div>
							<div class="l_tit">
								<input type="text" name="memberBizReferenceCode" id="memberBizReferenceCode" placeholder="프로모션 인증코드를 입력해주세요.">
							</div>
						</li>
					</ul>
				</div>
				<div class="btn_area">
					<!-- <a href="#" class="btn_txt btn_black">회원가입</a>-->
					<button type="button" class="btn_txt btn_black" onclick="submit_join();">회원가입</button>
				</div>
			</div>
			<!-- 통합회원 조회 레이어 -->
			<div class="layer m_view_layer" id="m_view_layer">
				<div class="display_table">
					<div class="table_cell">
						<div class="layer_area">
							<h2 class="layer_tit">통합회원 조회</h2>
							<!-- <button type="button" class="layer_close" onclick="commonUI.layer.close()">닫기</button> -->
							<div class="layer_con">
								<ul id="wine_mem_list"></ul>
								<div class="btn_area">
									<button type="button" class="btn_txt btn_black" onclick="merge_member();">회원통합</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- //통합회원 조회 레이어 -->
		</div>
	</div>
</form>
<form action="/shop/member/join/KCP/kcpcert_proc" name='form_auth' id='form_auth'>
	<input type="hidden" name="site_cd" id="site_cd" value="AI3K5">
	<input type="hidden" name="ordr_idxx" id="ordr_idxx">
	<input type="hidden" name="req_tx" id="req_tx" value="cert">
	<input type="hidden" name="cert_method" id="cert_method" value="01">
	<input type="hidden" name="cert_otp_use" id="cert_otp_use" value="Y">
	<input type="hidden" name="action" id="action" value="https://cert.kcp.co.kr/kcp_cert/cert_view.jsp">
	<input type="hidden" name="Ret_URL" id="Ret_URL" value="https://www.winenara.com/shop/member/join/kcpcert_response_ajax">
	<input type="hidden" name="cert_enc_use_ext" id="cert_enc_use_ext" value="Y">
	<input type="hidden" name="kcp_birth" id="kcp_birth">
	<input type="hidden" name="veri_up_hash" id="veri_up_hash">
	<input type="hidden" name="param_opt_1" id="param_opt_1" value="td5cqosrc0drsr4rts8i21muu4orh108">
	<input type="hidden" name="param_opt_2" id="param_opt_2" value="">
	<input type="hidden" name="param_opt_3" id="param_opt_3" value="join_form_page">
</form>
<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
	<img src="https://t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
</div>
<!-- page_script -->
<script>
    $("input[name='memberMaritalStatus']:radio").change(function(){
        if(this.value == 'Y'){
            $('.marry_date_li').css({'display':'block'});
        }else{
            $('.marry_date_li').css({'display':'none'});
        }
    })
    /* 결혼상태 유무 */
	$(document).ready(function() {
	    $("input[name='memberMaritalStatus']").change(function() {
	        if (this.value == 'Y') {
	            $('.marry_date_li').show();
	            $('#memberMaritalStatus_Y').next('label').addClass('selected');
	            $('#memberMaritalStatus_N').next('label').removeClass('selected');
	        } 
	        else {
	            $('.marry_date_li').hide();
	            $('#marry_date').val('');
	            $('#memberMaritalStatus_N').next('label').addClass('selected');
	            $('#memberMaritalStatus_Y').next('label').removeClass('selected');
	        }
	    });
	});
    function merge_member(){
        var no = $("input:radio[name='mem_num']:checked").val();
        var shop = $("input:radio[name='mem_num']:checked").data('shop');
        console.log(shop);
        if(no == 'undefined' || no == "" || no == null){
            alert('회원 선택 후 통합을 진행해주세요.');
        }else{
            Csrf.Set(_CSRF_NAME_); //토큰 초기화
            $.ajax({
                type:'POST',
                url :'/shop/auth/merge_mem',
                data : {'no':no},
                dataType:'json',
                success:function(res){
                    if(res.state == 'Y'){
                        merge_mem_chk = true;
                        commonUI.layer.close();
                        if(shop){$("#store_cd").val(shop).attr("selected", "selected");}
                        alert(res.msg);
                    }else{
                        alert(res.msg);
                    }
                },error:function(res){
                    alert('회원 통합 중 오류가 발생했습니다.');
                    console.log(res);
                }
            })
        }
    }
    function chk_wine_member(){
        var name = $('#user_nm').val();
        var phone = $('#phone').val();
        if(!name || !phone){
            alert('성인인증을 진행해주세요.');
            $('#auth_btn').focus();
            return false;
        }else{
            Csrf.Set(_CSRF_NAME_); //토큰 초기화
            $.ajax({
                type:'POST',
                url :'/shop/auth/chk_wine_member',
                data : {'name':name, 'phone':phone},
                dataType:'json',
                success:function(res){
                    if(res.state == 'Y'){
                        wine_mem_chk = true;
                        console.log(res.data);
                        if(res.data.length !== 0){
                            var input="";
                            var i = 1;
                            merge_mem_chk = false;
                            $.each(res.data, function(index, entry){
                                input += "<li>"
                                        + "<div class='checkbox type2'>"
                                        + "<input type='radio' id='m_view0"+i+"' name='mem_num' value='"+entry.q_cst+"' data-shop='"+entry.q_shop+"'>"
                                        + "<label for='m_view0"+i+"'>"
                                        + "<span class='tit'>"
                                        + "<em>"+entry.q_cst_knm+"</em>"
                                        + entry.q_tel_1
                                        + "</span>"
                                        + "<span>"
                                        + "회원번호 : "+entry.q_cst+"<br>"
                                        + "가입매장 : "+entry.q_shop_nm
                                        + "</span>"
                                        + "</label>"
                                        + "</div>"
                                        + "</li>"
                                i++;
                            });
                            $('#wine_mem_list').empty();
                            $('#wine_mem_list').append(input);
                            commonUI.layer.open('m_view_layer.html');
                        }else{
                            alert(res.msg);
                        }
                    }else{
                        alert('통합회원 조회 중 오류가 발생했습니다.');
                    }
                },error:function(res){
                    alert('통합회원 조회 중 오류가 발생했습니다.');
                    console.log(res);
                }
            })
        }
    }
    var wine_mem_chk = false;
    var merge_mem_chk = true;
    function auth_type_check(){
        var auth_form = document.form_auth;
        init_orderid();
        $('#auth_btn').hide();
        if( auth_form.ordr_idxx.value == "" ){
            alert( "다시 시도해주세요." );
            return false;
        }else{
            if( ( navigator.userAgent.indexOf("Android") > - 1 || navigator.userAgent.indexOf("iPhone") > - 1 ) == false ){ // 스마트폰이 아닌경우
                var return_gubun;
                var width  = 410;
                var height = 500;
                var leftpos = screen.width  / 2 - ( width  / 2 );
                var toppos  = screen.height / 2 - ( height / 2 );
                var winopts  = "width=" + width   + ", height=" + height + ", toolbar=no,status=no,statusbar=no,menubar=no,scrollbars=no,resizable=no";
                var position = ",left=" + leftpos + ", top="    + toppos;
                var AUTH_POP = window.open('kcpcert_proc.html','auth_popup', winopts + position);
                auth_form.target = "auth_popup";
            }else{
                auth_form.target = "kcp_cert";
                document.getElementById( "kcp_cert"  ).style.display = "";
            }
            auth_form.kcp_birth.value = $('#user_birth').val();
            auth_form.method = "post";
            auth_form.action = "/shop/member/join/kcpcert_proc_ajax";
            auth_form.submit();
            return true;
        }
    }
    // 앱에서 webView는 opener 를 인식하지 못해서, 모바일 별도처리
    function Mobile(){
	    return /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent);
    }
    var adult_chk = false;
    function adult_auth(){
        Csrf.Set(_CSRF_NAME_); //토큰 초기화
        var site_cd = $('#site_cd').val();
        var ordr_idxx = $('#ordr_idxx').val();
        $('#up_hash').val(site_cd + ordr_idxx + "000000");
        if(Mobile()){
            var auth_form = document.form_auth;
            auth_form.veri_up_hash.value = site_cd + ordr_idxx + "000000";
            adult_chk = true;
        }
        $('#form_auth').submit();
    }
    function auth_data( frm ){
        // if(Mobile()){
        //     location.reload();
        // }
        var auth_form     = document.form_auth;
        if( frm.up_hash.value != auth_form.veri_up_hash.value ){
            alert("비정상적인 접근입니다."); 
            console.log('up_hash 변조 위험');
        }    
        const today = new Date(); 
        const birthDate = new Date(parseInt(frm.r_birth.value.substring(0,4)), parseInt(frm.r_birth.value.substring(4,6))-1, parseInt(frm.r_birth.value.substring(6,8)));
        let age = today.getFullYear() - birthDate.getFullYear();
        const m = today.getMonth() - birthDate.getMonth();
        if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
            age--;
        }
        if(age < 19){
            alert('만 19세 이상만 가입이 가능합니다.');
            location.href = "../../main.html";
        }
        $('#phone').val(frm.r_phone.value);
        $('#user_birth').val(frm.r_birth.value);
        if(frm.r_gender_cd.value == '01'){
            $('.men').css('display','block');
            $('#gender_label').css('display','block');
            $('#gender_men').prop('checked',true);
        }else if(frm.r_gender_cd.value == '02'){
            $('.women').css('display','block');
            $('#gender_label').css('display','block');
            $('#gender_women').prop('checked',true);
        }else{
            $('#gender_label').css('display','none');
            $('.men').css('display','block');
            $('.women').css('display','block');
        }
        $('#user_nm').val(frm.r_user_name.value);
        adult_chk = true;
        $('#auth_div').hide();
        $('#kcp_cert').hide();
    }
    /* 예제 */
    // document.ready(function(){
    //     init_orderid();
    // });
    function init_orderid(){
        var today = new Date();
        var year  = today.getFullYear();
        var month = today.getMonth()+ 1;
        var date  = today.getDate();
        var time  = today.getTime();
        if(parseInt(month) < 10){
            month = "0" + month;
        }
        var vOrderID = year + "" + month + "" + date + "" + time;
        document.form_auth.ordr_idxx.value = vOrderID;
    }
    var element_layer = document.getElementById('layer');
    function closeDaumPostcode() {
        element_layer.style.display = 'none';
    }
    function initLayerPosition(){
        var width = 300; //우편번호서비스가 들어갈 element의 width
        var height = 400; //우편번호서비스가 들어갈 element의 height
        var borderWidth = 5; //샘플에서 사용하는 border의 두께
        // 위에서 선언한 값들을 실제 element에 넣는다.
        element_layer.style.width = width + 'px';
        element_layer.style.height = height + 'px';
        element_layer.style.border = borderWidth + 'px solid';
        // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
    }
    function input_reset(input, append){ 
        var appendTo = typeof appendTo == 'undefined' ? '.form_box' : appendTo;
        $(input).closest('.form_box').removeClass('error success');
        $(input).closest(appendTo).find('p').remove();
    }
    function input_success(input, msg, appendTo){
		var msg = typeof msg == 'undefined' ? '' : msg;
		var msg = msg ? msg : '정상 입력입니다.';
		var appendTo = typeof appendTo == 'undefined' ? '.form_box' : appendTo;
		input_reset(input);
		$(input).closest('.form_box').addClass('success');
		$(input).closest(appendTo).append('<p class="input_info_txt">' + msg + '</p>');
	}
	function input_error(input, msg, appendTo){
		var appendTo = typeof appendTo == 'undefined' ? '.form_box' : appendTo;
		input_reset(input);
		$(input).closest('.form_box').addClass('error');
		$(input).closest(appendTo).append('<p class="input_info_txt">' + msg + '</p>');
	}
    function check_reset(id){
        $(id).css({'color':'#999'});
        $(id).removeClass('error success');
    }
    function check_success(id){
        check_reset(id);
        $(id).css({'color':'green'});
        $(id).addClass('success');
    }
    function check_error(id){
        check_reset(id);
        $(id).css({'color':'red'});
        $(id).addClass('error');
        $(id).focus();
    }
    var form_check = {
        user_nm : function(input){
            if(!$(input).val()){
                input_error(input, '이름을 입력해주세요.');
                return false;
            }else{
                if(/^[가-힣]+$/.test($(input).val())){
                    if($(input).val().length < 2 || $(input).val().length > 8){
                        input_error(input, '정확한 이름을 입력해주세요.');
                        return false;
                    }
                }else if(/^[a-zA-Z ]+$/.test($(input).val())){
                    if($(input).val().length < 8 ){
                        input_error(input, '정확한 이름을 입력해주세요.');
                        return false;
                    }
                }else{
                    input_error(input, '정확한 이름을 입력해주세요.');
                    return false;
                }
                input_success(input);
                return true;
            }
        },
        user_id : function(input, usable_check_reset){
            var usable_check_reset = typeof usable_check_reset == 'undefined' ? true : usable_check_reset;
            if(!$(input).val()){
                // input_error(input, '아이디를 입력해주세요.');
                check_error('#id_length_chk');
                return false;
            }else{
                if(!/^[a-zA-Z0-9]+$/.test($(input).val())){
                    check_error('#id_length_chk');
					// input_error(input, '아이디는 영대소문자, 숫자만 입력 가능합니다.');
					return false;
				}else if( $(input).val().length < 5 || $(input).val().length > 20 ){
                    check_error('#id_length_chk');
                    return false;
                }else{
                    check_success('#id_length_chk');
                }
            }
            if(usable_check_reset){
				form_check.user_id_usable = 'W'
			}
            if(form_check.user_id_usable != 'Y'){
                // input_reset(input);
                if(form_check.user_id_usable_timeout){
					clearTimeout(form_check.user_id_usable_timeout);
				}
                form_check.user_id_usable_timeout = setTimeout(function(){
                    Csrf.Set(_CSRF_NAME_);
					$.ajax({
						       url: 'id_check_ajax',
						       type: 'POST',
						       data: {'id': $(input).val()},
						       dataType: 'json',
						       error: function(){
							    //    input_error(input, '아이디 중복 검사 중 오류가 발생했습니다.');
                                check_error('#id_chk');
						       },
						       success: function(result){
							       if(result.usable){
								       form_check.user_id_usable = 'Y';
								    //    input_success(input);
                                        check_reset('#id_chk');
                                        $('#id_chk').css({'display':'none'});
							       }else{
								       form_check.user_id_usable = 'N';
								    //    input_error(input, '사용할 수 없는 아이디입니다.');
                                        check_error('#id_chk');
                                        $('#id_chk').css({'display':'block'});
							       }
						       }
					       });
				}, 1000);
            }
            return true;
        },
        user_id_usable: 'N',
		user_id_usable_timeout: '',
        passwd:function(input){
            if($(input).val()==""){
                check_error('#pw_chk');
				return false;
            }else{
                if(/(.)\1{3,}/.test($(input).val())){
                    input_error(input, '동일문자 3자 이상 연속 입력할 수 없습니다.');
                    return false;
                }else{
                    if(!/^.{8,}$/.test($(input).val())){
                        // input_error(input, '8자 이상 20자 이하로 입력되어야 합니다.');
                        check_error('#pw_chk');
                        return false;
                    }else{
                        if(!/[a-zA-Z]+/.test($(input).val())){
                            // input_error(input, '영문이 반드시 포함되어야 합니다.');
                            check_error('#pw_chk');
                            return false;
                        }else{
                            if(!/[0-9]+/.test($(input).val())){
                                // input_error(input, '숫자가 반드시 포함되어야 합니다.');
                                check_error('#pw_chk');
                                return false;
                            }else{
                                if(!/[^ㄱ-ㅎㅏ-ㅣ가-힣0-9a-zA-Z]+/.test($(input).val())){
                                    // input_error(input, '특수문자가 반드시 사용되어야 합니다.');
                                    check_error('#pw_chk');
                                    return false;
                                }
                            }
                        }
                    }
                }
            }
            check_success('#pw_chk');
			return true;
        },
        passwd_repeat: function(input){
			if($(input).val() == ''){
				input_error(input, '비밀번호 확인을 입력해주세요.');
				return false;
			}else{
				if($(input).val() != $(join_form.memberPassword).val()){
					input_error(input, '입력하신 비밀번호가 일치하지 않습니다.');
					return false;
				}
            }
			input_success(input);
			return true;
		},
        birth_chk:function(input){      
            if($(input).val()==''){
                input_error(input, '본인 인증 후 자동으로 기입됩니다.');
                return false;
            }else{
                var birth = $(input).val();
                var year = birth.substr(0,2);
                var month = birth.substr(4,2);
                var day = birth.substr(6,2);
                if(year == '19' || year == '20'){
                    if(month > 0 && month < 13 && day > 0 && day < 32){
                        input_success(input);
			            return true;
                    }else{
                        input_error(input, '올바른 생년월일을 입력해주세요.');
                        return false;
                    }
                }else{
                    input_error(input, '올바른 년도를 입력해주세요.');
                    return false;
                }
            }
        },
        phone: function(input){
			if($(input).val() == ''){
				input_error(input, '본인 인증 후 자동으로 기입됩니다.', '.tel_box');
				return false;
			}else{
				if(!/^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/.test($(input).val())){
					input_error(input, '휴대폰번호 양식이 정확하지 않습니다.', '.tel_box');
					return false;
				}
            }
			input_success(input, '', '.tel_box');
			return true;
		},
        phone_code_send:function(button){
            if(!form_check.phone(join_form.phone)){
                return false;
            }
            Csrf.Set(_CSRF_NAME_);
            $.ajax({
                url: '/shop/member/join/phone_code_send_ajax',
                type: 'POST',
                data: {'phone': $(join_form.phone).val()},
                dataType: 'json',
                beforeSend: function(){
                    $(button).prop('disabled', true);
                },
                error: function(){
                    input_error(join_form.phone, '인증번호 발송 중 오류가 발생했습니다.', '.code_box');
                },
                success: function(result){
                    if(result.send){
                        input_success(join_form.phone, '인증번호를 확인해 주시기 바랍니다.', '.code_box');
                        alert('인증번호 : ' + result.tmp_code);
                        // $('#time').css('display','block');
                        // var display = $('#time');
                        // var leftSec = 180;
                        // if(isRunning){
                        //     clearInterval(timer);
                        //     display.html("");
                        //     startTimer(leftSec, display);
                        // }else{
                        //     startTimer(leftSec, display);
                        // }
                    }else{
                        input_error(join_form.phone, '인증번호 발송 중 오류가 발생했습니다.', '.code_box');
                    }
                },
                complete: function(){
                    $(button).prop('disabled', false);
                }
            });
        },
        phone_code : function(input){
            if($(input).val() == ''){
                input_error(input, '인증번호를 확인해 주시기 바랍니다.', '.code_box');
				return false;
            }
            return true;
        },
        phone_code_check: function(button){
			if(!form_check.phone_code(join_form.phone_code)){
				return false;
			}
			$.ajax({
                url: '/shop/member/join/phone_code_check_ajax',
                type: 'GET',
                data: {
                    'phone': $(join_form.phone).val(),
                    'phone_code': $(join_form.phone_code).val()
                },
                dataType: 'json',
                beforeSend: function(){
                    form_check.phone_code_checked = 'W';
                    $(button).prop('disabled', true);
                },
                error: function(){
                    input_error(input, '인증번호 확인 중 오류가 발생했습니다.', '.code_box');
                },
                success: function(result){
                    if(result.checked){
                        form_check.phone_code_checked = 'Y';
                        input_success(join_form.phone_code, '', '.code_box');
                        // if(time_chk){
                        //     phone_code_time_chk = true;
                        // }else{
                        //     phone_code_time_chk = false;
                        // }
                        // clearInterval(timer);
                    }else{
                        form_check.phone_code_checked = 'N';
                        input_error(join_form.phone_code, '잘못된 인증번호입니다.', '.code_box');
                    }
                },
                complete: function(){
                    $(button).prop('disabled', false);
                }
            });
		},
        phone_code_checked: 'N',
        email: function(input){
			if($(input).val() == ''){
				input_error(input, '이메일을 입력해주세요.');
				return false;
			}else
				if(!/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test($(input).val())){
					input_error(input, '이메일 주소를 다시 확인해주세요.');
					return false;
				}
			input_success(input);
			return true;
		},
        addr_open:function(button){
            new daum.Postcode({
                oncomplete: function(data) {
                    var addr = ''; // 주소 변수
                    var extraAddr = ''; // 참고항목 변수
                    $('#zip_code').val(data.zonecode);
                    $('#addr_first').val(data.roadAddress);
                    //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        addr = data.roadAddress;
                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        addr = data.jibunAddress;
                    }
                    // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                    if(data.userSelectedType === 'R'){
                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                        if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                            extraAddr += data.bname;
                        }
                        // 건물명이 있고, 공동주택일 경우 추가한다.
                        if(data.buildingName !== '' && data.apartment === 'Y'){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                        if(extraAddr !== ''){
                            extraAddr = ' (' + extraAddr + ')';
                        }
                        // 조합된 참고항목을 해당 필드에 넣는다.
                        // console.log('extraAddr : ' + extraAddr);
                        // document.getElementById("sample2_extraAddress").value = extraAddr;
                    } else {
                        // document.getElementById("sample2_extraAddress").value = '';
                    }
                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('memberPostcode').value = data.zonecode;
                    document.getElementById("memberAddress1").value = addr;
                    // 커서를 상세주소 필드로 이동한다.
                    document.getElementById("memberAddress2").focus();
                    // iframe을 넣은 element를 안보이게 한다.
                    // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                    element_layer.style.display = 'none';
                },
            width : '100%',
            height : '100%',
            maxSuggestItems : 5
            }).embed(element_layer);
            // iframe을 넣은 element를 보이게 한다.
            element_layer.style.display = 'block';
            // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
            initLayerPosition();
        }
    }
    $(join_form.memberName).on('keyup', function(){
		form_check.user_nm(this);
	});
    $(join_form.memberId).on('keyup', function(){
		form_check.user_id_usable = 'W';
		form_check.user_id(this);
	});
    $(join_form.memberPassword).on('keyup', function(){
		input_reset(join_form.memberPassword2);
		form_check.passwd(this);
	});
	$(join_form.memberPassword2).on('keyup', function(){
		form_check.passwd_repeat(this);
	});
    $(join_form.memberBirth).on('keyup', function(){
        form_check.birth_chk(this);
    });
    $(join_form.memberPhoneNumber).on('keyup', function(){
        form_check.phone(this);
    });
    $('#phone_code_send').click(function(){
		form_check.phone_code_send(this);
	});
    $(join_form.phone_code).on('keyup', function(){
		form_check.phone_code(this);
	});
    $('#phone_code_check').click(function(){
		form_check.phone_code_check(this);
	});
    $(join_form.memberEmail).on('keyup', function(){
		form_check.email(this);
	});
    $('#addr_open').click(function(){
        form_check.addr_open(this);
    })
    

    /* submit_join */
    function submit_join(){
		var check = true;
		/*
        if(!adult_chk){
            alert('성인인증을 진행해주세요.');
            $('#auth_btn').focus();
            return false;
        }
		*/
		if(!form_check.user_nm(join_form.user_nm)){
			check = false;
		}
		if(!form_check.user_id(join_form.user_id, false)){
			check = false;
		}else{
			if(form_check.user_id_usable != 'Y'){
				check = false;
				if(form_check.user_id_usable == 'W'){
					// input_error(join_form.user_id, '아이디 검사 중입니다. 잠시 후에 다시 시도해주세요.');
                    check_error('#id_chk');
				}else
					if(form_check.user_id_usable == 'N'){
						// input_error(join_form.user_id, '사용할 수 없는 아이디입니다.');
                        check_error('#id_chk');
					}
			}
		}
				if(!form_check.passwd(join_form.user_pass_01)){
			check = false;
		}
		if(!form_check.passwd_repeat(join_form.user_pass_02)){
			check = false;
		}
		if(!form_check.phone(join_form.phone)){
			check = false;
		}
		// if(!form_check.phone_code(join_form.phone_code)){
		// 	check = false;
		// }
		// if(form_check.phone_code_checked != 'Y'){
		// 	check = false;
		// 	if(form_check.phone_code_checked == 'W'){
		// 		input_error(join_form.phone_code, '연락처 인증 중 입니다. 잠시 후에 다시 시도해주세요.', '.ip_box');
		// 	}else{
		// 		input_error(join_form.phone_code, '연락처 인증이 완료되지 않았습니다.', '.ip_box');
		// 	}
		// }
		if(!form_check.email(join_form.email)){
			check = false;
		}
		
		/*
        if(!wine_mem_chk){
            alert('통합회원 조회를 진행해주세요.');
            return false;
        }
        if(!merge_mem_chk){
            alert('회원통합을 진행해주세요.');
            return false;
        }
        */
        
        if(!$("#memberStore option:selected").val()){
        	alert('매장을 선택해주세요.');
            return false;
        }
		
        var form = document.getElementById("join_form");
        var formData = new FormData(form);
        
        var memberId = document.getElementById("memberId").value.trim();
        var memberBirth = document.getElementById("memberBirth").value.trim();
        var memberPhoneNumber = document.getElementById("memberPhoneNumber").value;
        var memberName = document.getElementById("memberName").value.trim();
        var memberPassword = document.getElementById("memberPassword").value.trim();
        var memberEmail = document.getElementById("memberEmail").value.trim();
        var memberAddress1 = document.getElementById("memberAddress1").value.trim();
        var memberAddress2 = document.getElementById("memberAddress2").value.trim();
        var memberPostcode = document.getElementById("memberPostcode").value.trim();
        var memberMaritalStatus = $("input[name='memberMaritalStatus']:checked").val();
        var memberAnniversary = "";
        // 기혼 선택시 결혼기념일 값을 가져옴
        if (memberMaritalStatus === 'Y') {
            var anniversaryElement = document.getElementById("marry_date");
            if (anniversaryElement) {
                memberAnniversary = anniversaryElement.value.trim();
            }
        }
        var memberStore = document.getElementById("memberStore").value.trim();
        var memberBizReferenceCode = document.getElementById("memberBizReferenceCode").value.trim();
        
        
     	// AJAX 요청
	     $.ajax({
		    type: "POST",
		    url: "/join_submit.do",
		    contentType: "application/json",
		    data: JSON.stringify(Object.fromEntries(new Map(formData))),
		    success: function(response) {
		        console.log("서버 응답:", response);  // 응답 전체를 로깅
		        if (response.result === true) {
		            alert("회원 가입이 완료되었습니다.");
		            window.location.href = "/shop/member/join/join_ok.do";
		        } else {
		            alert("회원 가입에 실패했습니다. 이유: " + (response.message || "알 수 없는 오류"));
		        }
		    },
		    error: function() {
		        alert("서버와의 통신 중 오류가 발생했습니다.");
		    }
		});
        
		
		if (!$("input[name='memberMaritalStatus']:checked").val()) {
	        alert('결혼여부를 선택해주세요.');
	        check = false;
	    } 
		else if ($("input[name='memberMaritalStatus']:checked").val() == 'Y') {
	        if (!checkWeddingDate('#marry_date')) {
	            check = false;
	        }
	    }
		
	}
</script>
<!-- //page_script -->
</section>
<!-- //contents -->

<!-- footer -->
<%@ include file="../../common/footer.jsp" %>
<!-- //footer -->
</body>

<!-- 기혼, 미혼 스타일 추가 적용 -->
<style>
    .marry_box .box input[type="radio"] {
        display: none;
    }
    .form_area ul li.gender_li .form_box .gender_box .box label {
        display: flex;
        padding: 10px 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        cursor: pointer;
        align-items: center;
   		justify-content: center;
    }
    .marry_box .box input[type="radio"]:checked + label {
        background-color: #555;
        color: #ddd;
        border-color: #555;
    }
   .form_area ul li.gender_li .form_box .gender_box .box input:checked + label {
    	color: white;
}
</style>
</html>