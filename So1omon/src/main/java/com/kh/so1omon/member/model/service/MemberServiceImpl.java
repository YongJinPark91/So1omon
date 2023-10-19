package com.kh.so1omon.member.model.service;


import java.util.Map;
import java.util.ArrayList;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.member.model.dao.MemberDao;
import com.kh.so1omon.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDao mDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public Member loginMember(Member m) {
		return mDao.loginMember(sqlSession, m);
	}  

	@Override
	public int insertMember(Member m) {
		return mDao.insertMember(sqlSession, m);
	}
	

	@Override
	public int updateMember(Member m) {
		return mDao.updateMember(sqlSession, m);
	}   


	@Override
	public Member findIdUsePhone(Member m) {
		return mDao.findIdUsePhone(sqlSession,m);
	}

	@Override
	public Member findIdUseEmail(Member m) {
		return mDao.findIdUseEmail(sqlSession,m);
	}

	@Override
	public int findIdChangePwd(Member m) {
		return mDao.findIdChangePwd(sqlSession,m);
	}

	@Override
	public int idCheck(String checkId) {
		return mDao.idCheck(sqlSession, checkId);

	}

	@Override
	public int showMyWish(int userNo) {
		return mDao.showMyWish(sqlSession, userNo);
	}

	@Override
	public int updatePwd(Member m, String newPwd) {
		return mDao.updatePwd(sqlSession, m, newPwd);
	}
	
	public ArrayList<Member> selectMemberListAD(int num, int limit) {
		return mDao.selectMemberListAD(sqlSession, num, limit);
	}

	@Override
	public Member selectMemberAD(int userNo) {
		return mDao.selectMemberAD(sqlSession, userNo);

	}   

}
