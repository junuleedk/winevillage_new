package com.winevillage.note;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class WineProfileController {

	@PostMapping("/shop/mypage/shopping/wine_profile_ajax")
	public String wineProfileAjax() {
		/* shop/mypage/note/mileage_erp_lists_ajax 참조 */
		return "shop/mypage/shopping/wine_profile_ajax";
	}
}
