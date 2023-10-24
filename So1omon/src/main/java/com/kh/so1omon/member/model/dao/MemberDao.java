package com.kh.so1omon.member.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.ArrayList;
import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.so1omon.member.model.vo.Member;

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

	public int showMyWish(SqlSessionTemplate sqlSession, int userNo) {
		return sqlSession.selectOne("memberMapper.showMyWish", userNo);
	}
	
	// 비밀번호 변경
	public int updatePwd(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
		return sqlSession.update("memberMapper.updatePwd", map);
	}

	public ArrayList<Member> selectMemberListAD(SqlSessionTemplate sqlSession, int num, int limit){
		
		int offset = (num - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("memberMapper.selectMemberListAD", null, rowBounds);
	}
	
	public Member selectMemberAD(SqlSessionTemplate sqlSession, int userNo) {
		return sqlSession.selectOne("memberMapper.selectMemberAD", userNo);
	}
	
	public int deleteMember(SqlSessionTemplate sqlSession, int userNo) {
		return sqlSession.update("memberMapper.deleteMember", userNo);
	}
	
}
