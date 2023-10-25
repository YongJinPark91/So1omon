package com.kh.so1omon.board.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.so1omon.board.model.vo.Board;
import com.kh.so1omon.board.model.vo.Reply;
import com.kh.so1omon.board.model.vo.TBoard;
import com.kh.so1omon.common.model.vo.Attachment;
import com.kh.so1omon.common.model.vo.PageInfo;
import com.kh.so1omon.qna.model.vo.Answer;
import com.kh.so1omon.qna.model.vo.Question;

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
	int insertNotice(Board b);
	
	// 공지사항 상세보기
	Board selectNoticeDetail(int bno);
	// 공지사항 삭제
	int noticeDelete(int bno);
	// 공지사항 수정
	int selectNotice(int bno);
	int updateNotice(Board b);
	
	
	// 4. 메인페이지 인기게시글 조회
	ArrayList<Board> selectTopBoardList();

	// 5. 메인페이지 중고거래 최신글 조회
	ArrayList<TBoard> selectTopTBoardList();
	// 6. 마이페이지 나의 게시글 조회
	ArrayList<Board> selectMyPageBoardList(int mno);
	
	// 7. 마이페이지 나의 중고게시글 조회
	ArrayList<TBoard> selectMyPageTBoardList(int mno);
	
	// 8. 마이페이지 내가 좋아하는 게시글 조회
	ArrayList<Board> selectMyPageLikeList(int mno);
	
	// 9. 마이페이지 내가 쓴 댓글 조회
	ArrayList<Board> selectMyPageReplyList(int mno);
	
	// 중고게시판 리스트
	int selectTboardListCount();
	ArrayList<TBoard> selectTboardList(PageInfo pi);
	
	// 중고게시판 등록
	int insertTboard(TBoard t);
	int insertDetailFiles(ArrayList<Attachment>  atList);
	
	// 중고게시판 상세보기
	TBoard selectTboardDetail(int tboardNo);
	ArrayList<Attachment> selectTboardFile(int tboardNo);
	// 중고게시판 삭제하기
	int tboardDelete(String tboardNo);
	int tboardFileDelete(String tboardNo);
	
	// 중고게시판 수정하기
	TBoard selectTboard(String tboardNo);
	ArrayList<Attachment> selectTboardFileList(String tboardNo);
	int updateTboard(TBoard t);
	int deleteTboardFile(String tboardNo);
	int insertDetailFiles2(ArrayList<Attachment>  atList);
	
	// 중고게시판 댓글
	int insertTboardAnswer(Reply r);
	ArrayList<Reply> selectReplyListTB(String boardNo);
	
	
	// 관리자페이지 멤버 활동 조회
	ArrayList<Board> selectAllBoardListAD(int userNo);
	ArrayList<Reply> selectReplyListAD(int userNo);
	
	void testJobMethod();
	// 자유게시판 리스트 페이징바
	int selectBoardListCount();
	ArrayList<Board> selectboardList(PageInfo pi);
	
	// 자유게시판 제목 내용 검색 selectSearchBoardCount
	int selectSearchBoardCount(HashMap<String, String> map);
	ArrayList<Board> selectSearchBoardList(HashMap<String, String> map, PageInfo pi);
	
	// 자유게시판 등록 insertBoard
	int insertBoard(Board b);
	
	// 자유게시판 상세보기 boardDetailView
	Board boardDetailView(int bno);
	// 자유게시판 삭제 boardDelete
	int boardDelete(int boardNo);
	// 자유게시파 수정하기 boardUpdate
	int boardUpdate(Board b);
	
	// 자유게시판 댓글 answerBoardInsert 
	int answerBoardInsert(Reply r);
	ArrayList<Reply> answerBoardlist(String boardNo);
	
	// 마이페이지 자유게시글 삭제
	int deleteMyBoard(Board b);
}
