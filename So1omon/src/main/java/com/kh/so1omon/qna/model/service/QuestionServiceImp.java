package com.kh.so1omon.qna.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.board.model.vo.Board;
import com.kh.so1omon.common.model.vo.Attachment;
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

	@Override
	public int selectSearchCount(HashMap<String, String> map) {
		return qDao.selectSearchCount(sqlSession,map);
	}

	@Override
	public ArrayList<Question> selectSearchList(HashMap<String, String> map, PageInfo pi) {
		return qDao.selectSearchList(sqlSession,map,pi);
	}

	@Override
	public int insertQna(Question q) {
		return qDao.insertQna(sqlSession, q);
	}


	@Override
	public int insertFile(Attachment a) {
		return qDao.insertFile(sqlSession, a);
	}


	@Override
	public Question selectQuestion(int qno) {
		return qDao.selectQuestion(sqlSession, qno);
	}

	@Override		
	public Attachment selectQuestionFile(int qno) {
		return qDao.selectQuestionFile(sqlSession, qno);
	}

	@Override
	public int updateQuestion(Question q) {
		return qDao.updateQuestion(sqlSession,q);
	}

	@Override
	public int updateQuestionFile(Attachment a) {
		return qDao.updateQuestionFile(sqlSession, a);
	}

	@Override
	public int qnaDelete(int qno) {
		return qDao.qnaDelete(sqlSession, qno);
	}

	@Override
	public int qnaFileDelete(int qno) {
		return qDao.qnaFileDelete(sqlSession,qno);
	}
	
	


}
