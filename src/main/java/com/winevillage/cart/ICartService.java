package com.winevillage.cart;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.winevillage.parameter.ParameterDTO;
import com.winevillage.product.ProductDTO;

@Mapper
public interface ICartService {
	public ArrayList<CartDTO> viewCart(String memberId);
	public int addCart(CartDTO cartDTO);
}
