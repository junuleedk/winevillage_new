package com.winevillage.mapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MappingController {
	/* 성인 확인 페이지 */
	@GetMapping("index.do")
	public String index() {
		return "index";
	}
	
	/* 메인페이지 */
	@GetMapping("shop/main.do")
	public String main() {
		return "shop/main";
	}
	
	/* 회원가입 */
	//이용약관 동의
	@GetMapping("shop/member/join/law_agreement.do")
	public String law_agreement() {
		return "shop/member/join/law_agreement";
	}
	//회원정보 입력
	@GetMapping("shop/member/join/join_form.do")
	public String join_form() {
		return "shop/member/join/join_form";
	}
	@GetMapping("shop/member/join/join_success.do")
	public String join_success() {
		return "shop/member/join/join_success";
	}
	
	/* temp */
	@GetMapping("shop/common/header.do")
	public String header() {
		return "shop/common/header";
	}
	
	@GetMapping("shop/common/footer.do")
	public String footer() {
		return "shop/common/footer";
	}
	
	
}