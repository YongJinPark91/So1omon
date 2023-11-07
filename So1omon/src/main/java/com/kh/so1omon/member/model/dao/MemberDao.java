package com.kh.so1omon.member.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.ArrayList;
import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.so1omon.member.model.vo.Member;
import com.kh.so1omon.product.model.vo.Orders;

@Repository
public class MemberDao {

	// 1. 로그인
	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}
	
	// 2. 회원가입
	public int insertMember(SqlSessionTemplate sqlSession,Member m) {
		return sqlSession.insert("memberMapper.insertMember", m);
	}
	
	// 3. 개인정보수정
	public int updateMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateMember", m);
	}
	
	public Member findIdUsePhone(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.findIdUsePhone", m);
	}
	
	public Member findIdUseEmail(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.findIdUseEmail", m);
	}
	
	public int findIdChangePwd(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.findIdChangePwd", m);
	}

	public int idCheck(SqlSessionTemplate sqlSession, String checkId) {
		return sqlSession.selectOne("memberMapper.idCheck", checkId);
	}
	
	// 비밀번호 변경
	public int updatePwd(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
		return sqlSession.update("memberMapper.updatePwd", map);
	}

	public ArrayList<Member> selectMemberListAD(SqlSessionTemplate sqlSession, int num, int limit, String keyword){
		
		int offset = (num - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("memberMapper.selectMemberListAD", keyword, rowBounds);
	}
	
	public Member selectMemberAD(SqlSessionTemplate sqlSession, long userNo) {
		return sqlSession.selectOne("memberMapper.selectMemberAD", userNo);
	}

	public Member findKakao(SqlSessionTemplate sqlSession, HashMap<String, Object> userInfo) {
		return sqlSession.selectOne("memberMapper.findKakao",userInfo);
	}

	public int insertMemberKakao(SqlSessionTemplate sqlSession, HashMap<String, Object> userInfo) {
		/*
		System.out.println("=========== 여기는 DAO ===========");
		System.out.println(userInfo.get("nickName"));
		System.out.println(userInfo.get("email"));
		System.out.println(userInfo.get("profile"));
		System.out.println(userInfo.get("userId"));
		System.out.println(userInfo.get("userPwd"));
		System.out.println(userInfo.get("address"));
		System.out.println(userInfo.get("phone"));
		System.out.println(userInfo.get("userName"));
		*/
		return sqlSession.insert("memberMapper.insertMemberKakao", userInfo);
	}
	
	
	public int deleteMember(SqlSessionTemplate sqlSession, long userNo) {
		return sqlSession.update("memberMapper.deleteMember", userNo);
	}

	public int updateMemberKakao(SqlSessionTemplate sqlSession, HashMap<String, Object> userInfo) {
		return sqlSession.update("memberMapper.updateKakao", userInfo);
		
	}

	public int findNomalMember(SqlSessionTemplate sqlSession, HashMap<String, Object> userInfo) {
		return sqlSession.selectOne("memberMapper.findNomalMember", userInfo);
	}

	public int enrollMemberKakao(SqlSessionTemplate sqlSession, HashMap<String, Object> userInfo) {
		return sqlSession.update("memberMapper.enrollMemberKakao", userInfo);
		
	}

	public int emailCheck(SqlSessionTemplate sqlSession, String checkEmail) {
		return sqlSession.selectOne("memberMapper.emailCheck", checkEmail);
	}

	public int findEmail(SqlSessionTemplate sqlSession, HashMap<String, Object> userInfo) {
		return sqlSession.selectOne("memberMapper.findEmail", userInfo);
	}

	public int insertWishList(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("memberMapper.insertWishList", m);
	}

	public int deleteWish(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.delete("memberMapper.deleteWish", m);
	}

	public int updateCartList(SqlSessionTemplate sqlSession, Member m) {
		System.out.println("여기는 멤버 디에이오이용 : "+m.getUserNo());
		return sqlSession.update("memberMapper.updateCart", m);
	}
	
	public int paymentUpdatePoint(SqlSessionTemplate sqlSession, Orders o) {
		int result = 0;
		
		// 받아온 point를 그대로 가져가서 -
		int PointminusResult = sqlSession.update("memberMapper.paymentUpdateMinusPoint", o);
		if(PointminusResult > 0) {
			result++;
		}
		
		//totalPrice에서 0.05를 더해서 o.point에 저장후 쿼리에서 +
		int plusPoint = (int)(o.getTotalPrice()*0.05);
		o.setPoint(plusPoint);
		
		int PointAddresult = sqlSession.update("memberMapper.paymentUpdateAddPoint", o);
		if(PointAddresult > 0) {
			result++;
		}
		
		if(result > 0) {
			return result;
		}else {
			return 0;
		}
	}
	
	
	public int updateMemberAD(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateMemberAD", m);
	}
	
}
