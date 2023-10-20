package com.kh.so1omon.board.model.service;

import java.util.ArrayList;
import java.util.HashMap;

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

	@Override
	public int selectSearchCount(HashMap<String, String> map) {
		return bDao.selectSearchCount(sqlSession,map);
	}

	@Override
	public ArrayList<Board> selectSearchList(HashMap<String, String> map, PageInfo pi) {
		return bDao.selectSearchList(sqlSession,map,pi);
	}

	@Override
	public ArrayList<Board> selectTopBoardList() {
		return bDao.selectTopBoardList(sqlSession);
	}

	@Override
	public ArrayList<TBoard> selectTopTBoardList() {
		return bDao.selectTopTBoardList(sqlSession);
	}
	
	

	@Override
	public ArrayList<Board> selectMyPageBoardList(int mno) {
		return bDao.selectMyPageBoardList(sqlSession, mno);
	}
	
	@Override
	public ArrayList<TBoard> selectMyPageTBoardList(int mno) {
		return bDao.selectMyPageTBoardList(sqlSession, mno);
	}
	
	
	
	
}
