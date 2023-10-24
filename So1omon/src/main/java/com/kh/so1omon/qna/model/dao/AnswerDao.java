package com.kh.so1omon.qna.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.so1omon.qna.model.vo.Answer;


@Repository
public class AnswerDao {
	
	public int insertAnswer(SqlSessionTemplate sqlSession, Answer an) {
		return sqlSession.insert("qnaMapper.insertAnswer", an);
	}

	
	public ArrayList<Answer> selectAnswerList(SqlSessionTemplate sqlSession, int qno){
		return (ArrayList)sqlSession.selectList("qnaMapper.selectAnswerList", qno);
	}
	
	public int updateQnaStatus(SqlSessionTemplate sqlSession, int qno) {
		int result = sqlSession.update("qnaMapper.updateQnaStatus", qno);
		System.out.println("확인확ㅇ니!#!"+result);
		
		
		return result;
	}
	

	
}
