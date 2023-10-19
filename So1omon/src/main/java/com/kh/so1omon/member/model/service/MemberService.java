package com.kh.so1omon.member.model.service;

import com.kh.so1omon.member.model.vo.Member;

public interface MemberService {
	
	// 1. 로그인
	Member loginMember(Member m);
	
	// 2. 회원가입
	int insertMember(Member m);
	
	// 3. 개인정보수정
	int updateMember(Member m);
	
}
