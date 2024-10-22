package com.winevillage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
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

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class MainController {
	
	@Autowired
	IEventService eventService;
	
	@Autowired
	IProductService productService;
	
	@Autowired
	IMagazineConService magazineConService;

	@RequestMapping("/")
	public String home() {
		return "index";
	}
	
	/* 메인페이지 */
	@GetMapping("shop/main.do")
	public String main(Model model,
			HttpServletRequest request, ParameterDTO parameterDTO) {
		// 이벤트 리스트 출력
		parameterDTO.setStart(0);
		parameterDTO.setEnd(10);
		ArrayList<EventDTO> eventDTO = eventService.listEventMain(parameterDTO);
		model.addAttribute("event", eventDTO);
		
		// NEW ARRIVALS 출력
		parameterDTO.setEnd(9);
		ArrayList<ProductDTO> productDTO = productService.listProductMain(parameterDTO);
		model.addAttribute("productListMain", productDTO);
		
		// OUR STORIES 출력
		parameterDTO.setEnd(5);
		ArrayList<MagazineConDTO> magazineConDTO = magazineConService.listMagazineCon(parameterDTO);
		model.addAttribute("magazineCon", magazineConDTO);
		
		return "shop/main";
	}
}
