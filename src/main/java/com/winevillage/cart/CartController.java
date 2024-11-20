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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.winevillage.member.IMemberService;
import com.winevillage.parameter.ParameterDTO;
import com.winevillage.product.IProductService;

@Controller
public class CartController {

	@Autowired
	ICartService dao;

	@Autowired
	private IMemberService member;

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
				member.addCartCount(memberId);
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
	
	@PostMapping("/shop/cart/cart_proc_ajax")
	@ResponseBody
	public ResponseEntity<Map<String, Object>> cartProcAjax(Authentication authentication,
			@RequestParam("ajax_mode") String ajaxMode, @RequestBody Map<String, Object> payload) {

		Map<String, Object> response = new HashMap<>();

		try {
			String memberId = authentication.getName();

			switch (ajaxMode) {
				case "DEL":
					// 단일 아이템 삭제
					List<String> cartSeqStrList = (List<String>) payload.get("cart_seq");
					List<Integer> cartSeqList = new ArrayList<>();

					// String 값을 Integer로 변환하여 List<Integer>에 추가
					for (String cartSeqStr : cartSeqStrList) {
						cartSeqList.add(Integer.parseInt(cartSeqStr));
					}

					for (Integer cartSeq : cartSeqList) {
						dao.deleteCartItem(cartSeq);
					}
					member.removeCartCount(memberId);
					response.put("status", "ok");
					break;
				case "DEL_OPT":
					// 선택된 추가 옵션 삭제
					List<String> cartOptSeqStrList = (List<String>) payload.get("cart_opt_seq");
					List<Integer> cartOptSeqList = new ArrayList<>();

					// String 값을 Integer로 변환하여 List<Integer>에 추가
					for (String cartOptSeqStr : cartOptSeqStrList) {
						cartOptSeqList.add(Integer.parseInt(cartOptSeqStr));
					}

					for (Integer cartOptSeq : cartOptSeqList) {
						dao.deleteCartOption(cartOptSeq);
					}
					member.removeCartCount(memberId);
					response.put("status", "ok");
					break;
				case "UPD_QTY":
					// 수량 변경
					int cartSeq = Integer.parseInt(payload.get("cart_seq").toString());
					int qty = Integer.parseInt(payload.get("qty").toString());
					String productCd = (String) payload.get("product_cd");

					// 재고 확인 로직 (예시)
					int stock = dao.getProductStock(productCd);
					if (qty > stock) {
						response.put("status", "err2");
						response.put("msg", "재고가 부족합니다. 현재 남아있는 재고의 수는 " + stock + "개 입니다.");
						return new ResponseEntity<>(response, HttpStatus.OK);
					}

					CartDTO cartDTO = new CartDTO();
					cartDTO.setCart_no(cartSeq);
					cartDTO.setQuantity(qty);
					dao.updateCartQuantity(cartDTO);

					response.put("status", "ok");
					break;
				case "UPD_PACKING":
					// 포장 방식 변경
					int packingCartSeq = Integer.parseInt(payload.get("cart_seq").toString());
					String packingValue = (String) payload.get("packing");

					dao.updatePackingOption(packingCartSeq, packingValue);
					response.put("status", "ok");
					break;
				case "ORDER":
					// 주문 프로세스
					List<Integer> orderCartSeqList = (List<Integer>) payload.get("cart_seq");
					for (Integer orderCartSeq : orderCartSeqList) {
						boolean stockAvailable = dao.checkStockAvailability(orderCartSeq);
						if (!stockAvailable) {
							response.put("status", "err2");
							response.put("msg", "재고가 부족합니다.");
							return new ResponseEntity<>(response, HttpStatus.OK);
						}
					}
					response.put("status", "ok");
					response.put("url", "/shop/order/order_write");
					break;
				default:
					response.put("status", "error");
					response.put("msg", "잘못된 요청입니다.");
					return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
			}

			return new ResponseEntity<>(response, HttpStatus.OK);

		} catch (Exception e) {
			e.printStackTrace();
			response.put("status", "error");
			response.put("msg", "처리 중 오류가 발생했습니다.");
			System.out.println("ajax_mode:"+ajaxMode);
			System.out.println("payload:"+payload);
			return new ResponseEntity<>(response, HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
	@GetMapping("shop/cart/cart_lists.do")
	public String cartLists(Model model, CartDTO cartDTO,
			Authentication authentication) {
		String memberId = null;
		if (authentication != null) memberId = authentication.getName();
		ArrayList<CartDTO> lists = null;
		if (memberId != null) {
			lists = dao.viewCart(memberId);
		} else {
			lists = new ArrayList<>();
		}
		
		//cart_log
		Map<String, String> cartLogMap = new HashMap<>();
		for (CartDTO item : lists) {
			cartLogMap.put(item.getProduct_code(), String.valueOf(item.getQuantity()));
		}
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			String cartLogJson = objectMapper.writeValueAsString(cartLogMap);
			model.addAttribute("cart_log", cartLogJson);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		model.addAttribute("lists", lists);
		return "shop/cart/cart_lists";
	}
}
