package com.winevillage.member;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IMemberService {

	// 회원가입
	public int insertMember(MemberDTO membertDTO);
	
	// 자동 로그인 아이디 찾기
	public MemberDTO findMemberId(String membertDTO);
}
