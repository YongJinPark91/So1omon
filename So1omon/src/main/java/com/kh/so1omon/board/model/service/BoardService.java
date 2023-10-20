package com.kh.so1omon.board.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.so1omon.board.model.vo.Board;
import com.kh.so1omon.board.model.vo.TBoard;
import com.kh.so1omon.common.model.vo.PageInfo;

public interface BoardService {
	
	// 검색기능
	ArrayList<Board> searchBoard(String keyword);
	ArrayList<TBoard> searchTboard(String keyword);
	
	
	//1. 공지사항 리스트 및 페이징바 
	int selectNoticeListCount();
	ArrayList<Board> selectNoticeList(PageInfo pi);
	
	// 2. 공지사항 제목 내용검색
	int selectSearchCount(HashMap<String, String> map);
	ArrayList<Board> selectSearchList(HashMap<String, String> map, PageInfo pi);
	
	// 3. 공지사항 작성
	
	
	// 4. 메인페이지 인기게시글 조회
	ArrayList<Board> selectTopBoardList();

	// 5. 마이페이지 나의 게시글 조회
	ArrayList<Board> selectMyPageBoardList(int mno);
	
	// 5. 마이페이지 나의 중고게시글 조회
	ArrayList<TBoard> selectMyPageTBoardList(int mno);
	
}
