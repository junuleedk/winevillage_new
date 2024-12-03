package com.winevillage.member;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IMemberService {
	//회원가입
	public int insertMember(MemberDTO memberDTO);
	public int addMemberPoints(MemberDTO memberDTO);
	public int removeMemberPoints(MemberDTO memberDTO);
	public Integer cartCount(String memberId);
	public int addCartCount(String memberId);
	public int removeCartCount(String memberId);
	public Integer wishCount(String memberId);
	public int addWishCount(String memberId);
	public int removeWishCount(String memberId);
	public Integer couponCount(String memberId);
	public int addCouponCount(String memberId);
	public int removeCouponCount(String memberId);
}
