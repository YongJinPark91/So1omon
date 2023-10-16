package com.kh.so1omon.board.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.so1omon.board.model.vo.Board;
import com.kh.so1omon.common.model.vo.PageInfo;

@Repository
public class BoardDao {
	
	
	public int selectNoticeListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("boardMapper.selectNoticeListCount");
	}
	
	public ArrayList<Board> selectNoticeListCount(SqlSessionTemplate sqlSession, PageInfo pi){
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectNoticeList",null, rowBounds);
	}

}
