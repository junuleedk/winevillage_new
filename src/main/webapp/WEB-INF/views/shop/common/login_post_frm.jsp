<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<form action="<c:url value='/shop/auth/login_check' />" id="LoginPostFrm" onkeydown="javascript:onEnterLogin();" method="post" accept-charset="utf-8">
	<!-- <input type="hidden" name="witplus_csrf_token" value="be7b38b9302ff3c05cc7f68a617d7dd7"/> -->
	<div class="layer login_layer" id="login_layer">
		<div class="display_table">
			<div class="table_cell">
				<div class="layer_area">
					<h2 class="layer_tit">회원서비스 
					<!-- <p class="check"><span>로그인</span></p>
                    <p><span><a href="/shop/member/join/law_agreement">회원가입</a></span></p> -->
					</h2>
					<button type="button" class="layer_close" onclick="commonUI.layer.close()">닫기</button>
					<div class="layer_con">
						<div class="login_tab">
							<p class="check"><span>기존회원</span></p>
							<p><span><a href="/shop/member/join/law_agreement">신규회원가입</a></span></p>
						</div>
						<div class="social_login">
							<h2 class="social_tit">소셜아이디로 로그인</h2>
							<ul>
								<li><a href="#none" class="social_btn naver">네이버</a></li>
								<li><a href="#none" class="social_btn kakao">카카오</a></li>
								<li><a href="#none" class="social_btn google">구글</a></li>
								<!-- <li><a href="#none" class="social_btn apple">애플</a></li> -->
							</ul>
						</div>
						<div class="form_area">
							<ul>
								<li>
									<div class="form_box">
										<input type="text" id="login_user_id" name="login_user_id" value="" placeholder="아이디를 입력하세요">
									</div>
								</li>
								<li>
									<div class="form_box">
										<input type="password" id="login_passwd" name="login_passwd" placeholder="비밀번호를 입력하세요">
									</div>
								</li>
							</ul>
						</div>
						<input type="hidden" id="login_return_url_param" name="login_return_url_param">
						<div class="save_box">
							<div class="checkbox">
								<input type="checkbox" name="login_auto" id="login_auto" value="Y" checked>
								<label for="login_auto">로그인유지</label>
							</div>
							<div class="checkbox">
								<input type="checkbox" name="id_save" id="id_save" value="Y">
								<label for="id_save">아이디저장</label>
							</div>
							<p class="input_info_txt">※ 공공장소에서는 꺼주세요.</p>
						</div>
						<div class="btn_area">
							<button type="button" class="btn_txt btn_black" id="loginBtn"><span>로그인</span></button>
						</div>
						<div class="login_sub_btn">
							<a href="/shop/member/forgotten/forgotten_id" class="btn">아이디 찾기</a>
							<a href="/shop/member/forgotten/forgotten_pw" class="btn">비밀번호 재발급</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>