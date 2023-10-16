package com.kh.so1omon.board.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.board.model.dao.BoardDao;
import com.kh.so1omon.board.model.vo.Board;
import com.kh.so1omon.board.model.vo.TBoard;

@Service
public class BoardServiceImp implements BoardService{
	
	@Autowired
	private BoardDao bDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public ArrayList<Board> searchBoard(String keyword) {

		return bDao.searchBoard(sqlSession, keyword);
	}

	@Override
	public ArrayList<TBoard> searchTboard(String keyword) {
		
		return bDao.searchTboard(sqlSession, keyword);
	}
	
	
}
