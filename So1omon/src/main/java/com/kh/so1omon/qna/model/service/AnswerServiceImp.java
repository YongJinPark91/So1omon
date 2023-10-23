package com.kh.so1omon.qna.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.qna.model.dao.AnswerDao;
import com.kh.so1omon.qna.model.vo.Answer;

@Service
public class AnswerServiceImp implements AnswerService{
	
	@Autowired
	private AnswerDao aDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int insertAnswer(Answer an) {
		return aDao.insertAnswer(sqlSession,an);
	}

	@Override
	public ArrayList<Answer> selectAnswerList(int qno) {
		return aDao.selectAnswerList(sqlSession, qno);
	}

	@Override
	public int updateQnaStatus(int qno) {
		return aDao.updateQnaStatus(sqlSession,qno);
	}

	
	@Override
	public int insertTboardAnswer(Answer an) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateTboardStatus(int qno) {
		// TODO Auto-generated method stub
		return 0;
	}
	

	
	
}
