package com.kh.so1omon.board.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.board.model.dao.BoardDao;
import com.kh.so1omon.board.model.vo.Board;
import com.kh.so1omon.board.model.vo.Reply;
import com.kh.so1omon.board.model.vo.TBoard;
import com.kh.so1omon.common.model.vo.Attachment;
import com.kh.so1omon.common.model.vo.PageInfo;
import com.kh.so1omon.qna.model.vo.Answer;

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
	public ArrayList<Board> selectAllBoardListAD(int userNo) {
		return bDao.selectAllBoardListAD(sqlSession, userNo);
	}

	@Override
	public ArrayList<Reply> selectReplyListAD(int userNo) {
		return bDao.selectReplyListAD(sqlSession, userNo);
	}
	
	

	@Override
	public ArrayList<Board> selectMyPageBoardList(int mno) {
		return bDao.selectMyPageBoardList(sqlSession, mno);
	}
	
	@Override
	public ArrayList<TBoard> selectMyPageTBoardList(int mno) {
		return bDao.selectMyPageTBoardList(sqlSession, mno);
	}

	@Override
	public int selectTboardListCount() {
		return bDao.selectTboardListCount(sqlSession);
	}

	@Override
	public ArrayList<TBoard> selectTboardList(PageInfo pi) {
		return bDao.selectTboardList(sqlSession, pi);
	}

	@Override
	public int insertTboard(TBoard t) {
		return bDao.insertTboard(sqlSession, t);
	}

	@Override
	public int insertDetailFiles(ArrayList<Attachment> atList) {
		return bDao.insertDetailFiles(sqlSession, atList);
	}



	@Override
	public TBoard selectTboardDetail(int tboardNo) {
		return bDao.selectTboardDetail(sqlSession, tboardNo);
	}

	@Override
	public ArrayList<Attachment> selectTboardFile(int tboardNo) {
		return bDao.selectTboardFile(sqlSession, tboardNo);
	}

	@Override
	public int tboardDelete(String tboardNo) {
		return bDao.tboardDelete(sqlSession, tboardNo);
	}

	@Override
	public int tboardFileDelete(String tboardNo) {
		return bDao.tboardFileDelete(sqlSession, tboardNo);
	}

	@Override
	public TBoard selectTboard(String tboardNo) {
		return bDao.selectTboard(sqlSession, tboardNo);
	}

	@Override
	public ArrayList<Attachment> selectTboardFileList(String tboardNo) {
		return bDao.selectTboardFileList(sqlSession, tboardNo);
	}

	@Override
	public int updateTboard(TBoard t) {
		return bDao.updateTboard(sqlSession, t);
	}

	@Override
	public int deleteTboardFile(String tboardNo) {
		return bDao.deleteTboardFile(sqlSession, tboardNo);
	}

	@Override
	public int insertDetailFiles2(ArrayList<Attachment> atList) {
		return bDao.insertDetailFiles2(sqlSession, atList);
	}

	@Override
	public int insertTboardAnswer(Reply r) {
		return bDao.insertTboardAnswer(sqlSession, r);
	}

	@Override
	public ArrayList<Reply> selectReplyListTB(String boardNo) {
		return bDao.selectReplyListTB(sqlSession, boardNo);
	}

	@Override
	public Board selectNoticeDetail(int bno) {
		return bDao.selectNoticeDetail(sqlSession, bno);
	}

	@Override
	public int insertNotice(Board b) {
		return bDao.insertNotice(sqlSession, b);
		
	}

	@Override
	public int noticeDelete(int bno) {
		return bDao.noticeDelete(sqlSession, bno);
	}

	@Override
	public int selectNotice(int bno) {
		return bDao.selectNotice(sqlSession, bno);
	}









	

	@Override
	public ArrayList<Board> selectMyPageLikeList(int mno) {
		return bDao.selectMyPageLikeList(sqlSession, mno);
	}

	@Override
	public ArrayList<Board> selectMyPageReplyList(int mno) {
		return bDao.selectMyPageReplyList(sqlSession, mno);
	}

	
	
}
