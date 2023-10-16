package com.kh.so1omon.board.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.so1omon.board.model.vo.Board;
import com.kh.so1omon.board.model.vo.TBoard;

@Repository
public class BoardDao {
	
	public ArrayList<Board> searchBoard(SqlSessionTemplate sqlSession, String keyword){
		
		return (ArrayList)sqlSession.selectList("boardMapper.searchBoard", keyword);
	}
	
	public ArrayList<TBoard> searchTboard(SqlSessionTemplate sqlSession, String keyword){
		
		return (ArrayList)sqlSession.selectList("boardMapper.searchTboard", keyword);
	}

}
