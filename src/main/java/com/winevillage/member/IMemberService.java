package com.winevillage.member;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IMemberService {

	//회원가입
	public int insertMember(MemberDTO membertDTO);
}
