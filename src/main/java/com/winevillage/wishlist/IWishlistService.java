package com.winevillage.wishlist;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.winevillage.parameter.ParameterDTO;

@Mapper
public interface IWishlistService {
	public ArrayList<WishlistDTO> viewWishlist(ParameterDTO parameterDTO);
	public int countWishlist(WishlistDTO wishlistDTO);
	public Integer selectWishlist(WishlistDTO wishlistDTO);
	public String[] selectWishlists(String memberId);
	public int addWishlist(WishlistDTO wishlistDTO);
	public int removeWishlist(WishlistDTO wishlistDTO);
}
