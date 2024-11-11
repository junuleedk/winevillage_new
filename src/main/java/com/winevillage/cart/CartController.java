package com.winevillage.cart;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.winevillage.member.IMemberService;
import com.winevillage.parameter.ParameterDTO;
import com.winevillage.product.IProductService;

@Controller
public class CartController {

	@Autowired
	ICartService dao;

	@Autowired
	private IMemberService member;
	
	@Autowired
	private IProductService product;

	@PostMapping("/shop/cart/insert_cart_ajax")
	@ResponseBody
	public ResponseEntity<Map<String, Object>> insertCartAjax(
			Authentication authentication,
			@RequestBody Map<String, Object> payload) {  // JSON을 @RequestBody로 받음

		Map<String, Object> response = new HashMap<>();

		try {
			String memberId = authentication.getName();

			@SuppressWarnings("unchecked")
			// JSON에서 products 리스트 가져오기
			List<Map<String, Object>> productList = (List<Map<String, Object>>) payload.get("products");
			String iscurr = (String) payload.get("iscurr");

			// 장바구니에 추가된 수량 합계를 계산
			int cntIncrease = 0;

			for (Map<String, Object> product : productList) {
				String productCode = (String) product.get("product_cd");
				int quantity = Integer.parseInt(product.get("qty").toString());

				cntIncrease += quantity;  // 수량 합계 증가

				CartDTO cartDTO = new CartDTO();
				cartDTO.setMemberId(memberId);
				cartDTO.setProduct_code(productCode);
				cartDTO.setQuantity(quantity);

				dao.addCart(cartDTO);

				// 장바구니 개수 업데이트
				member.updateCartCount(memberId);
			}

			// 업데이트된 memberCartCount 값 가져오기
			Integer memberCartCount = member.cartCount(memberId); // getMemberCartCount 메서드가 필요함

			response.put("status", "ok");
			response.put("cnt_increase", cntIncrease);  // 합산된 수량을 cnt_increase에 설정
			response.put("cart_cnt", memberCartCount); // 업데이트된 memberCartCount를 JSON으로 전달하여 AJAX를 통해 갱신

			if ("G".equalsIgnoreCase(iscurr)) {
				response.put("url", "/shop/cart/cart_lists.do");
			}

			return new ResponseEntity<>(response, HttpStatus.OK);

		} catch (Exception e) {
			response.put("status", "error");
			response.put("msg", "장바구니에 담는 중 오류가 발생했습니다.");
			return new ResponseEntity<>(response, HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
	@GetMapping("shop/cart/cart_lists.do")
	public String cartLists(Model model, Authentication authentication,
			CartDTO cartDTO) {
		String memberId = null;
		if (authentication != null) memberId = authentication.getName();
		
		ArrayList<CartDTO> lists = null;
		if (memberId != null) {
			lists = dao.viewCart(memberId);
		} else {
			lists = new ArrayList<>();
		}
		model.addAttribute("lists", lists);
		return "shop/cart/cart_lists";
	}
}
