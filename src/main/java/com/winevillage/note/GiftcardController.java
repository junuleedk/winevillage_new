package com.winevillage.note;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class GiftcardController {

	@GetMapping("shop/mypage/note/giftcard_lists.do")
	public String giftcard_lists() {
		return "shop/mypage/note/giftcard_lists";
	};
	@GetMapping("shop/mypage/note/giftcard_order.do")
	public String giftcard_order() {
		return "shop/mypage/note/giftcard_order";
	};
}
