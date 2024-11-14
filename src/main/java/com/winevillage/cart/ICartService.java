package com.winevillage.cart;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ICartService {
	public ArrayList<CartDTO> viewCart(String memberId);
	public int addCart(CartDTO cartDTO);
	public void deleteCartItem(Integer cartSeq);
	public void deleteCartOption(Integer cartOptSeq);
	public int getProductStock(String productCd);
	public void updateCartQuantity(CartDTO cartDTO);
	public void updatePackingOption(int packingCartSeq, String packingValue);
	public boolean checkStockAvailability(Integer orderCartSeq);
}
