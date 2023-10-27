package com.kh.so1omon.qna.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.so1omon.common.model.vo.Attachment;
import com.kh.so1omon.common.model.vo.PageInfo;
import com.kh.so1omon.qna.model.vo.Question;

@Repository
public class QuestionDao {

	public int selectQnaListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("qnaMapper.selectQnaListCount");
	}
	
	public ArrayList<Question> selectQnaListCount(SqlSessionTemplate sqlSession, PageInfo pi){
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("qnaMapper.selectQnaList", null, rowBounds);
	}
	
	
	public int selectSearchCount(SqlSessionTemplate sqlSession, HashMap<String, String> map) {
		return sqlSession.selectOne("qnaMapper.selectSearchCount", map);
	}
	
	public ArrayList<Question> selectSearchList(SqlSessionTemplate sqlSession, HashMap<String, String> map, PageInfo pi){
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("qnaMapper.selectSearchList", map, rowBounds);
	}
	
	public int insertQna(SqlSessionTemplate sqlSession, Question q) {
		return sqlSession.insert("qnaMapper.insertQna", q);
	}
	
	public int insertFile(SqlSessionTemplate sqlSession, Attachment a) {
		return sqlSession.insert("qnaMapper.insertFile", a);
	}
	
	public Question selectQuestion(SqlSessionTemplate sqlSession, int qno) {
		return sqlSession.selectOne("qnaMapper.selectQuestion", qno);
	}
	
	public Attachment selectQuestionFile(SqlSessionTemplate sqlSession, int qno) {
		return sqlSession.selectOne("qnaMapper.selectQuestionFile", qno);
	}
	
	public int updateQuestion(SqlSessionTemplate sqlSession, Question q) {
		return sqlSession.update("qnaMapper.updateQuestion", q);
	}
	
	public int updateQuestionFile(SqlSessionTemplate sqlSession,Attachment a) {
		
		return sqlSession.update("qnaMapper.updateQuestionFile", a);
	}
	
	public int qnaDelete(SqlSessionTemplate sqlSession, int qno) {
		System.out.println("문자붙어나옴?"+qno);
		return sqlSession.update("qnaMapper.qnaDelete", qno);
	}
	
	public int qnaFileDelete(SqlSessionTemplate sqlSession, int qno) {
		return sqlSession.update("qnaMapper.qnaFileDelete", qno);
	}
	
	
	public ArrayList<Question> selectMyPageQuestionList(SqlSessionTemplate sqlSession, int mno){
		return (ArrayList)sqlSession.selectList("qnaMapper.selectMyPageQuestionList", mno);
	}
	
	
	public ArrayList<Question> selectQuestionListAD(SqlSessionTemplate sqlSession, int num, int limit, String status){
		
		int offset = (num -1) * limit;
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("qnaMapper.selectQuestionListAD", status, rowBounds);
	}
	
}
