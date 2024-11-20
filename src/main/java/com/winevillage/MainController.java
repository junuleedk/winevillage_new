package com.winevillage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.winevillage.community.IMagazineConService;
import com.winevillage.community.MagazineConDTO;
import com.winevillage.event.EventDTO;
import com.winevillage.event.IEventService;
import com.winevillage.parameter.ParameterDTO;
import com.winevillage.product.IProductService;
import com.winevillage.product.ProductDTO;
import com.winevillage.wishlist.IWishlistService;
import com.winevillage.wishlist.WishlistDTO;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class MainController {
	
	@Autowired
	private IEventService event;
	
	@Autowired
	private IProductService product;
	
	@Autowired
	private IWishlistService wishlist;
	
	@Autowired
	private IMagazineConService magazineCon;

	@RequestMapping("/")
	public String home() {
		return "index";
	}
	
	/* 메인페이지 */
	@GetMapping("shop/main.do")
	public String main(Model model, Authentication authentication,
			HttpServletRequest request, ParameterDTO parameterDTO) {
		// 이벤트 리스트 출력
		parameterDTO.setStart(0);
		parameterDTO.setEnd(10);
		ArrayList<EventDTO> eventDTO = event.listEventMain(parameterDTO);
		model.addAttribute("event", eventDTO);
		
		// NEW ARRIVALS 출력
		parameterDTO.setEnd(9);
		ArrayList<ProductDTO> productDTO = product.listProductMain(parameterDTO);
		model.addAttribute("productListMain", productDTO);
		
		// NEW ARRIVALS 위시리스트 출력
		String memberId = null;
		String[] wishlists = null;
		if (authentication != null) {
			memberId = authentication.getName();
			wishlists = wishlist.selectWishlists(memberId);
		}
		if (wishlists != null) {
			List<String> wishlist = Arrays.asList(wishlists);
			for (ProductDTO productDTOList : productDTO) {
				if (wishlist.contains(productDTOList.getProduct_code())) {
					productDTOList.setWished(true); // 상품이 체크되어있음을 보여주기 위한 boolean(페이지 내에서 사용)
				}
			}
		}
		
		// OUR STORIES 출력
		parameterDTO.setEnd(5);
		ArrayList<MagazineConDTO> magazineConDTO = magazineCon.listMagazineCon(parameterDTO);
		model.addAttribute("magazineCon", magazineConDTO);
		
		return "shop/main";
	}
}
