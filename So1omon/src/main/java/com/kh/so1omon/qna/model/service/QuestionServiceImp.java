package com.kh.so1omon.qna.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.common.model.vo.PageInfo;
import com.kh.so1omon.qna.model.dao.QuestionDao;
import com.kh.so1omon.qna.model.vo.Question;

@Service
public class QuestionServiceImp implements QuestionService {

	@Autowired
	private QuestionDao qDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int selectQnaListCount() {
		return qDao.selectQnaListCount(sqlSession);
	}

	@Override
	public ArrayList<Question> selectQnaList(PageInfo pi) {
		return qDao.selectQnaListCount(sqlSession,pi);
	}
}
