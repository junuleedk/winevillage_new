package com.winevillage.mapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MappingController {
	@GetMapping("index.do")
	public String index() {
		return "index";
	}
	@GetMapping("shop/main.do")
	public String main() {
		return "shop/main";
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