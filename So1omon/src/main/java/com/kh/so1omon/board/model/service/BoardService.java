package com.kh.so1omon.board.model.service;

import java.util.ArrayList;

import com.kh.so1omon.board.model.vo.Board;
import com.kh.so1omon.common.model.vo.PageInfo;

public interface BoardService {
	
	
	//1. 게시판 리스트 및 페이징바 
	int selectNoticeListCount();
	ArrayList<Board> selectNoticeList(PageInfo pi);

}
