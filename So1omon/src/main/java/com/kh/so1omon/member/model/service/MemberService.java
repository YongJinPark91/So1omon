package com.kh.so1omon.member.model.service;

import java.util.ArrayList;

import com.kh.so1omon.member.model.vo.Member;

public interface MemberService {
	
	// 1. 로그인
	Member loginMember(Member m);
	
	// 2. 회원가입
	int insertMember(Member m);
	
	// 3. 아이디찾기(휴대폰)
	Member findIdUsePhone(Member m);
	
	// 4. 아이디찾기(이메일)
	Member findIdUseEmail(Member m);
	
	// 5. 아이디찾기 후 비밀번호 재설정
	int findIdChangePwd(Member m);
	
	// 6.회원가입시 아이디 중복체크
	int idCheck(String checkId);
	
<<<<<<< Updated upstream
=======
	// 7. 헤더, myWish 리스트 가져오기
	int showMyWish(int userNo);
	
	// 8. 개인정보수정
	int updateMember(Member m);
	
	
	// 9. 관리자페이지 전체 멤버 조회
	ArrayList<Member> selectMemberListAD(int num, int limit);
	
	// 10. 관리자페이지 멤버 상세 조회
	Member selectMemberAD(int userNo);
	
>>>>>>> Stashed changes
}
