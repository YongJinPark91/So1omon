package com.kh.so1omon.member.model.dao;

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
	
}
