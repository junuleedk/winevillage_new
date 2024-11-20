package com.winevillage.wishlist;

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

import com.winevillage.member.IMemberService;
import com.winevillage.pagination.Pagination;
import com.winevillage.parameter.ParameterDTO;
import com.winevillage.product.IProductService;
import com.winevillage.product.ProductDTO;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class WishlistController {

	@Autowired
	IWishlistService dao;
	
	@Autowired
	private IMemberService member;
	
	@Autowired
	private IProductService product;
	
	@GetMapping("shop/mypage/note/wish_lists.do")
	public String wishlists(Model model, HttpServletRequest request,
			Authentication authentication, ParameterDTO parameterDTO,
			ProductDTO productDTO, WishlistDTO wishlistDTO) {
		
		//한 페이지 당 표시될 갯수 설정, 페이지네이션 관련 설정
		int pageSize = 6;
		int blockPage = 10;
		//총 갯수는 memberId를 받아온 후에 countWishlist로 받아옴
		int count = 0;
		int pageNum = (request.getParameter("page") == null || request.getParameter("page").equals("")) ? 1
	            : Integer.parseInt(request.getParameter("page"));
		int start = (pageNum - 1) * pageSize + 1;
		int end = pageNum * pageSize;
	    
		parameterDTO.setStart(start);
		parameterDTO.setEnd(end);
		
		//wishlist 리스트의 상품들을 ProductDTO 데이터로 저장후 출력해야한다.(product 테이블에서 조회)
		List<ProductDTO> wishlist = new ArrayList<>();
		
		//memberId 선언
		String memberId = null;
		
		if (authentication != null) {
			//memberId를 Authentication에서 가져온다.
			memberId = authentication.getName();
			
			//총 갯수 파악을 위해 countWishlist 쿼리를 사용
			//memberId를 wishlistDTO에 넣고, wishlistDTO를 매개변수로
			//count에 저장한다.(pagination에 매개변수로 입력된다.)
			wishlistDTO.setMemberId(memberId);
			count = dao.countWishlist(wishlistDTO);
			
			//viewWishlist에 parameterDTO를 매개변수로 넣기 때문에 memberId를 그 안에 입력한다.
			parameterDTO.setMemberId(memberId);
			//wishlist 데이터를 List<WishlistDTO> 형식으로 담는다.
			//해당 과정을 거쳐야 지정된 pageSize에 맞게 한 페이지 내에 지정된 상품의 갯수만큼 출력된다.
			//(페이지네이션이 필요없을 경우 List<WishlistDTO>에 담는 과정이 필요 없음)
			List<WishlistDTO> wishlistItems = dao.viewWishlist(parameterDTO);
			//wishlist 데이터 중 product_code 칼럼의 정보만 필요하기 때문에 String[] 타입으로 변환한다.
			String[] product_codes = wishlistItems.stream()
				    .map(WishlistDTO::getProduct_code) // WishlistDTO의 product_code 필드를 가져옴
				    .toArray(String[]::new);
			//상품 목록 데이터로 출력해야 하므로 product_codes에 있는 상품코드를
			//List<ProductDTO> 안에 하나씩 for문으로 담는다.
			for (String product_code : product_codes) {
				productDTO.setProduct_code(product_code.trim());
				ProductDTO wishlistProduct = product.viewProduct(productDTO);
				wishlistProduct.setWished(true); // 상품이 체크되어있음을 보여주기 위한 boolean(페이지 내에서 사용)
				wishlist.add(wishlistProduct);
			}
		}
		
		//저장된 상품 데이터 wishlist를 lists 모델로 전달한다.
		model.addAttribute("lists", wishlist);
		
		//countWishlist 쿼리로 가져온 총 갯수를 maps 안에 입력 후 model로 전달
		Map<String, Object> maps = new HashMap<String, Object>();
		maps.put("page", pageNum);
		maps.put("count", count);
		model.addAttribute("maps", maps);
		
		//페이지네이션 설정
		String baseUrl = request.getContextPath() + "/shop/mypage/note/wish_lists.do?";
		String pagination = Pagination.product(count, pageSize, blockPage, pageNum, baseUrl);
		
		//pagination을 모델로 전달
		model.addAttribute("pagination", pagination);
		
		return "shop/mypage/note/wish_lists";
	}
	
	@PostMapping("/shop/mypage/note/wish_proc_ajax")
	@ResponseBody
	public ResponseEntity<Map<String, Object>> wishProcAjax(
			Authentication authentication, WishlistDTO wishlistDTO,
			@RequestParam("ajax_mode") String ajaxMode,
			@RequestBody Map<String, Object> payload) {
		Map<String, Object> response = new HashMap<>();

		try {
			String memberId = authentication.getName();
			String productCode = (String) payload.get("product_code");
			List<String> productCodes = (List<String>) payload.get("product_codes");
			Integer likeCnt;

			switch (ajaxMode) {
				case "ADD":
					wishlistDTO.setProduct_code(productCode);
					wishlistDTO.setMemberId(memberId);
					dao.addWishlist(wishlistDTO);
					member.addWishCount(memberId);
					likeCnt = member.wishCount(memberId);
					response.put("like_cnt", likeCnt);
					response.put("status", "ok");
					break;
				case "DEL":
					if (productCodes != null && productCode == null) {
						for (String product : productCodes) {
							wishlistDTO.setProduct_code(product);
							wishlistDTO.setMemberId(memberId);
							Integer no = dao.selectWishlist(wishlistDTO);
							wishlistDTO.setNo(no);
							dao.removeWishlist(wishlistDTO);
							member.removeWishCount(memberId);
							likeCnt = member.wishCount(memberId);
							response.put("like_cnt", likeCnt);
						}
					} else if (productCode != null && productCodes == null) {
						wishlistDTO.setProduct_code(productCode);
						wishlistDTO.setMemberId(memberId);
						Integer no = dao.selectWishlist(wishlistDTO);
						wishlistDTO.setNo(no);
						dao.removeWishlist(wishlistDTO);
						member.removeWishCount(memberId);
						likeCnt = member.wishCount(memberId);
						response.put("like_cnt", likeCnt);
					}
					response.put("status", "ok");
					break;
				default:
					response.put("status", "error");
					response.put("msg", "Invalid ajax_mode");
					return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
			}

			return new ResponseEntity<>(response, HttpStatus.OK);

		} catch (Exception e) {
			e.printStackTrace();
			response.put("status", "error");
			response.put("msg", "An error occurred: " + e.getMessage());
			return new ResponseEntity<>(response, HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
}
