package com.winevillage.mapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	/* 제품정보 */
//	@GetMapping("shop/product/product_lists.do")
//	public String product_lists() {
//		return "shop/product/product_lists";
//	}
	@GetMapping("shop/product/product_view.do")
	public String product_view() {
		return "shop/product/product_view";
	}
	
	/* 회원정보-내 계정 찾기 */
	//아이디 찾기
	@GetMapping("shop/member/forgotten/forgotten_id.do")
	public String forgotten_id() {
		return "shop/member/forgotten/forgotten_id";
	}
	//비밀번호 재발급
	@GetMapping("shop/member/forgotten/forgotten_pw.do")
	public String forgotten_pw() {
		return "shop/member/forgotten/forgotten_pw";
	}
	
	/* 회원정보-회원가입 */
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
	
	/* 주문 */
	@GetMapping("shop/order/order_write.do")
	public String order_write() {
		return "shop/order/order_write";
	}
	@GetMapping("shop/order/order_ok.do")
	public String order_ok() {
		return "shop/order/order_ok";
	}
	
	/* 회사소개 */
	@GetMapping("shop/company/about_us.do")
	public String about_us() {
		return "shop/company/about_us";
	}
	@GetMapping("shop/company/member_benefit.do")
	public String member_benefit() {
		return "shop/company/member_benefit";
	}
	@GetMapping("shop/company/store.do")
	public String store() {
		return "shop/company/store";
	}
	
	/* 고객센터 */
	@GetMapping("shop/cs/faq_list.do")
	public String faq_list() {
		return "shop/cs/faq_list";
	}
	@GetMapping("shop/cs/notice_lists.do")
	public String notice_lists() {
		return "shop/cs/notice_lists";
	}
	@GetMapping("shop/cs/notice_view.do")
	public String notice_view() {
		return "shop/cs/notice_view";
	}
	@GetMapping("shop/cs/qna_write.do")
	public String qna_write() {
		return "shop/cs/qna_write";
	}
	
	/* 이벤트 */
	@GetMapping("shop/event/event_end.do")
	public String event_end() {
		return "shop/event/event_end";
	}
	@GetMapping("shop/event/event_lists.do")
	public String event_lists() {
		return "shop/event/event_lists";
	}
	
	/* 마이페이지 */
	@GetMapping("shop/mypage/account/member_modify.do")
	public String member_modify() {
		return "shop/mypage/account/member_modify";
	}
	@GetMapping("shop/mypage/account/password_cert.do")
	public String password_cert() {
		return "shop/mypage/account/password_cert";
	}
	@GetMapping("shop/mypage/account/sns_connect.do")
	public String sns_connect() {
		return "shop/mypage/account/sns_connect";
	}
	@GetMapping("shop/mypage/account/withdrawal.do")
	public String withdrawal() {
		return "shop/mypage/account/withdrawal";
	}
	@GetMapping("shop/mypage/account/withdrawal_ok.do")
	public String withdrawal_ok() {
		return "shop/mypage/account/withdrawal_ok";
	}
	
	@GetMapping("shop/mypage/action/qna_lists.do")
	public String qna_lists() {
		return "shop/mypage/action/qna_lists";
	}
	@GetMapping("shop/mypage/action/qna_proc")
	public String qna_proc() {
		return "shop/mypage/action/qna_proc";
	}
	@GetMapping("shop/mypage/action/tasting_gallery_view.do")
	public String tasting_gallery_view() {
		return "shop/mypage/action/tasting_gallery_view";
	}
	@GetMapping("shop/mypage/action/tasting_lists.do")
	public String tasting_lists() {
		return "shop/mypage/action/tasting_lists";
	}
	@GetMapping("shop/mypage/action/tasting_view.do")
	public String tasting_view() {
		return "shop/mypage/action/tasting_view";
	}
	@GetMapping("shop/mypage/action/tasting_write.do")
	public String tasting_write() {
		return "shop/mypage/action/tasting_write";
	}
	
	@GetMapping("shop/mypage/note/wish_lists.do")
	public String wish_lists() {
		return "shop/mypage/note/wish_lists";
	}
	
	@GetMapping("shop/mypage/shopping/mypage.do")
	public String mypage() {
		return "shop/mypage/shopping/mypage";
	}
	@GetMapping("shop/mypage/shopping/order_lists.do")
	public String order_lists() {
		return "shop/mypage/shopping/order_lists";
	}
	@GetMapping("shop/mypage/shopping/order_view.do")
	public String order_view() {
		return "shop/mypage/shopping/order_view";
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
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	@RequestMapping("/guest")
	public String welcome1() {
		return "guest";
	}
	@RequestMapping("/member")
	public String welcome2() {
		return "member";
	}
	@RequestMapping("/admin")
	public String welcome3() {
		return "admin";
	}
//	@RequestMapping("/auth/login")
//	public String login1(Principal principal, Model model) {
//		try {
//			String user_id = principal.getName();
//			model.addAttribute("user_id", user_id);
//		}
//		catch (Exception e) {
//			System.out.println("로그인 전입니다.");
//		}
//		return "auth/login";
//	}
	@RequestMapping("/auth/error")
	public String login2() {
		return "auth/error";
	}
	@RequestMapping("/auth/denied")
	public String login3() {
		return "auth/denied";
	}
	
//	@GetMapping("shop/main.do")
//	public String main(HttpServletRequest request) {
//		String currentUrl = request.getRequestURL().toString();
//	    request.getSession().setAttribute("currentUrl", currentUrl);
//		return "shop/main";
//	}
	
//	@GetMapping("shop/member/join/join_form1.do")
//	public String join_form1() {
//		return "shop/member/join/join_form1";
//	}
	
	
}