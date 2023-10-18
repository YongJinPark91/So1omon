package com.kh.so1omon.qna.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

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
}
