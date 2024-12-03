package com.winevillage.note;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.winevillage.parameter.ParameterDTO;

@Mapper
public interface ICouponService {
	public ArrayList<CouponDTO> listCoupon(ParameterDTO parameterDTO);
	public int totalCoupon(String memberId);
	public int usedCoupon(String memberId);
	public void addCoupon(CouponDTO couponDTO);
	public CouponDTO checkCouponExist(CouponDTO couponDTO);
	public CouponDTO searchCouponCode(CouponDTO couponDTO);
}
