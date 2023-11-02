package com.kh.so1omon.member.model.service;

import java.util.HashMap;
import java.io.IOException;
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
	
	// 6. 회원가입시 아이디 중복체크
	int idCheck(String checkId);
	
	// 8. 개인정보수정
	int updateMember(Member m);

	// 9. 비밀번호 변경
	int updatePwd(HashMap<String, Object> map);
	
	// 9. 관리자페이지 전체 멤버 조회
	ArrayList<Member> selectMemberListAD(int num, int limit, String keyword);
	
	// 11. 관리자페이지 멤버 상세 조회
	Member selectMemberAD(long userNo);
	
	// 12. 마이페이지에서 회원탈퇴
	int deleteMember(long userNo);

	// 13. 카카오톡 로그인
	String getAccessToken(String code);
	
	// 14. 카카오톡 회원 관련 확인
	Member getUserInfo(String accessToken) throws IOException;
	
	// 15. 이메일 중복확인
	int emailCheck(String checkEmail);
	
	// 16. 회원가입후 찜리스트 추가(비회원으로 찜한경우)
	int insertWishList(Member m);
	
	// 17. 회원가입 후 쿠키 찜 리스트 삭제(회원가입을 한다음 비회원 찜 리스트 삭제)
	// PK로 묶여있어서 update가 안됨
	int deleteWish(Member m);
}
	




