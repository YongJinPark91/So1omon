package com.kh.so1omon.board.model.service;

import java.util.ArrayList;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.board.model.dao.BoardDao;
import com.kh.so1omon.board.model.vo.Board;
import com.kh.so1omon.board.model.vo.TBoard;
import com.kh.so1omon.common.model.vo.PageInfo;

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
	
	

	@Override
	public int selectNoticeListCount() {
		
		return bDao.selectNoticeListCount(sqlSession);
	}

	@Override
	public ArrayList<Board> selectNoticeList(PageInfo pi) {

		return bDao.selectNoticeListCount(sqlSession, pi);
	}
}
