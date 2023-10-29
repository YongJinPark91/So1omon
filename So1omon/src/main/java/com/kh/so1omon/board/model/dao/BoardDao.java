package com.kh.so1omon.board.model.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;

import org.springframework.stereotype.Repository;

import com.kh.so1omon.board.model.vo.Board;
import com.kh.so1omon.board.model.vo.Like;
import com.kh.so1omon.board.model.vo.Reply;
import com.kh.so1omon.common.model.vo.Attachment;
import com.kh.so1omon.common.model.vo.PageInfo;
import com.kh.so1omon.board.model.vo.TBoard;

@Repository
public class BoardDao {
	
	public ArrayList<Board> searchBoard(SqlSessionTemplate sqlSession, String keyword){
		ArrayList<Board> blist = (ArrayList)sqlSession.selectList("boardMapper.searchBoard", keyword);
		System.out.println("dao b" + blist);
		
		return blist;
	}
	
	public ArrayList<TBoard> searchTboard(SqlSessionTemplate sqlSession, String keyword){
		ArrayList<TBoard> tblist = (ArrayList)sqlSession.selectList("boardMapper.searchTboard", keyword);
		System.out.println("dao tb" + tblist);
		return tblist; 
	}

	
	
	public int selectNoticeListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("boardMapper.selectNoticeListCount");
	}
	
	public ArrayList<Board> selectNoticeListCount(SqlSessionTemplate sqlSession, PageInfo pi){
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectNoticeList",null, rowBounds);
	}
	
	public int selectSearchCount(SqlSessionTemplate sqlSession, HashMap<String, String> map) {
		return sqlSession.selectOne("boardMapper.selectSearchCount", map);
	}
	
	
	
	public ArrayList<Board> selectSearchList(SqlSessionTemplate sqlSession, HashMap<String, String> map, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectSearchList", map, rowBounds);
	}
	
	public ArrayList<Board> selectTopBoardList(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("boardMapper.selectTopBoardList");
	}
	
	public ArrayList<TBoard> selectTopTBoardList(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("boardMapper.selectTopTBoardList");
	}




	public ArrayList<Board> selectMyPageBoardList(SqlSessionTemplate sqlSession, int mno){
		return (ArrayList)sqlSession.selectList("boardMapper.selectMyPageBoardList", mno);
	}
	
	public ArrayList<TBoard> selectMyPageTBoardList(SqlSessionTemplate sqlSession, int mno){
		return (ArrayList)sqlSession.selectList("boardMapper.selectMyPageTBoardList", mno);

	}
	
	public ArrayList<Board> selectMyPageLikeList(SqlSessionTemplate sqlSession, int mno){
		return (ArrayList)sqlSession.selectList("boardMapper.selectMyPageLikeList", mno);
	}
	
	public ArrayList<Board> selectMyPageReplyList(SqlSessionTemplate sqlSession, int mno){
		return (ArrayList)sqlSession.selectList("boardMapper.selectMyPageReplyList", mno);
	}

	public ArrayList<Board> selectAllBoardListAD(SqlSessionTemplate sqlSession, int userNo){
	      return (ArrayList)sqlSession.selectList("boardMapper.selectAllBoardListAD", userNo);
   }
	
	public ArrayList<Reply> selectReplyListAD(SqlSessionTemplate sqlSession, int userNo){
		return (ArrayList)sqlSession.selectList("boardMapper.selectReplyListAD", userNo);

	}
	
	
	public int selectTboardListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("boardMapper.selectTboardListCount");
	}
	
	public ArrayList<TBoard> selectTboardList(SqlSessionTemplate sqlSession,PageInfo pi){
		
		int offset = (pi.getCurrentPage() -1 ) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectTboardList", null, rowBounds);
	}
	
	
	public int insertTboard(SqlSessionTemplate sqlSession, TBoard t) {
		return sqlSession.insert("boardMapper.insertTboard", t);
	}
	
	//1022
	public int insertDetailFiles(SqlSessionTemplate sqlSession, ArrayList<Attachment> atList) {
	    int result = 0;
	    for (Attachment at : atList) {
	        int currentResult = sqlSession.insert("boardMapper.insertDetailFiles", at);
	        result += currentResult; // 개별 결과를 누적
	    }
	    return result;
	}

	public TBoard selectTboardDetail(SqlSessionTemplate sqlSession, int tboardNo) {
		return sqlSession.selectOne("boardMapper.selectTboardDetail", tboardNo);
	}

	public ArrayList<Attachment> selectTboardFile(SqlSessionTemplate sqlSession, int tboardNo) {
		return (ArrayList)sqlSession.selectList("boardMapper.selectTboardFile", tboardNo);
	}
	
	public int tboardDelete(SqlSessionTemplate sqlSession, String tboardNo) {
		return sqlSession.update("boardMapper.tboardDelete", tboardNo);
	}
	
	public int tboardFileDelete(SqlSessionTemplate sqlSession, String tboardNo) {
		return sqlSession.update("boardMapper.tboardFileDelete", tboardNo);
	}
	
	
	public TBoard selectTboard(SqlSessionTemplate sqlSession, String tboardNo) {
		return sqlSession.selectOne("boardMapper.selectTboard", tboardNo);
	}
	
	public ArrayList<Attachment> selectTboardFileList(SqlSessionTemplate sqlSession, String tboardNo) {
		return (ArrayList)sqlSession.selectList("boardMapper.selectTboardFile2", tboardNo);
	}
	
	public int updateTboard(SqlSessionTemplate sqlSession, TBoard t ) {
		return sqlSession.update("boardMapper.updateTboard", t);
	}
	
	public int deleteTboardFile(SqlSessionTemplate sqlSession, String tboardNo) {
		return sqlSession.delete("boardMapper.deleteTboardFile", tboardNo);
	}
	
	public int insertDetailFiles2(SqlSessionTemplate sqlSession, ArrayList<Attachment> atList) {
	    int result = 0;
	    for (Attachment at : atList) {
	        int currentResult = sqlSession.insert("boardMapper.insertDetailFiles2", at);
	        result += currentResult; // 개별 결과를 누적
	    }
	    return result;
	}
	
	public int insertTboardAnswer(SqlSessionTemplate sqlSession, Reply r) {
		return sqlSession.insert("boardMapper.insertTboardAnswer", r);
	}
	
	public ArrayList<Reply> selectReplyListTB(SqlSessionTemplate sqlSession, String boardNo){
		return (ArrayList)sqlSession.selectList("boardMapper.selectReplyListTB", boardNo);
	}
	
	
	public Board selectNoticeDetail(SqlSessionTemplate sqlSession, int bno) {
		return sqlSession.selectOne("boardMapper.selectNoticeDetail", bno);
	}
	
	public int insertNotice(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.insert("boardMapper.insertNotice", b);
	}
	
	
	public int noticeDelete(SqlSessionTemplate sqlSession, int bno) {
		return sqlSession.update("boardMapper.noticeDelete", bno);
	}
	
	public int selectNotice(SqlSessionTemplate sqlSession, int bno) {
		return sqlSession.selectOne("boardMapper.selectNoticeDetail", bno);
	}
	

	
	public int selectBoardListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("boardMapper.selectBoardListCount");
	}
	

	public ArrayList<Board> selectBoardListAD(SqlSessionTemplate sqlSession, int num, int limit, int type){
		
		int offset = (num -1) * limit;
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("boardMapper.selectBoardListAD", type, rowBounds);
	}
	
	public ArrayList<TBoard> selectTBoardListAD(SqlSessionTemplate sqlSession, int num, int limit, String keyword){
		int offset = (num -1) * limit;
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("boardMapper.selectTBoardListAD", keyword, rowBounds);
	}
	
	public int selectSearchBoardCount(SqlSessionTemplate sqlSession, HashMap<String, String> map) {
		int a = sqlSession.selectOne("boardMapper.selectSearchBoardCount", map);
		return a;
	}
	
	
	
	public ArrayList<Board> selectSearchBoardList(SqlSessionTemplate sqlSession, HashMap<String, String> map ,PageInfo pi){
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		return (ArrayList)sqlSession.selectList("boardMapper.selectSearchBoardList", map, rowBounds);
		
	}
	
	public Board boardDetailView(SqlSessionTemplate sqlSession, int bno) {
		return sqlSession.selectOne("boardMapper.boardDetailView", bno);
	}
	
	public int boardDelete(SqlSessionTemplate sqlSession, int boardNo) {
		int result = sqlSession.update("boardMapper.boardDelete", boardNo);
		return result;
	}
	
	public int insertBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.insert("boardMapper.insertBoard", b);
	}
	
	
	public int boardUpdate(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.update("boardMapper.boardUpdate", b);
	}
	
	
	public int answerBoardInsert(SqlSessionTemplate sqlSession, Reply r ) {
		return sqlSession.insert("boardMapper.answerBoardInsert", r);
	}
	
	
	public ArrayList<Reply> answerBoardlist(SqlSessionTemplate sqlSession, String boardNo){
		return (ArrayList)sqlSession.selectList("boardMapper.answerBoardlist", boardNo);
	}
	
	
	
	
	public int updateNotice(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.update("boardMapper.updateNotice", b);
	}
	

	
	public ArrayList<Board> selectboardList(SqlSessionTemplate sqlSession, PageInfo pi){
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectboardList", null, rowBounds);
	
	}
	
	
	
	public int deleteMyBoard(SqlSessionTemplate sqlSession, Board b) {
		System.out.println(b);
		
		return sqlSession.update("boardMapper.deleteMyBoard", b);
	}
	
	
	//중고 조회수
	public int increaseTboardCount(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.update("boardMapper.increaseTboardCount",boardNo);
	}
	//자유 조회수
	public int increaseBoardCount(SqlSessionTemplate sqlSession, int bno) {
		return sqlSession.update("boardMapper.increaseBoardCount",bno);
	}
	// 공지 조회수
	public int increaseNoticeCount(SqlSessionTemplate sqlSession, int bno) {
		return sqlSession.update("boardMapper.increaseNoticeCount",bno);
	}
	
	public int deleteReplyTboard(SqlSessionTemplate sqlSession, Reply r) {
		return sqlSession.update("boardMapper.deleteReplyTboard", r);
	}
	
	public int deleteReplyBoard(SqlSessionTemplate sqlSession, Reply r) {
		return sqlSession.update("boardMapper.deleteReplyBoard", r);
	}
	
	public int addLike(SqlSessionTemplate sqlSession, Like l) {
		return sqlSession.insert("boardMapper.addLike", l);
	}
	public int removeLike(SqlSessionTemplate sqlSession, Like l) {
		return sqlSession.insert("boardMapper.removeLike", l);
	}
	
	
	public int selectBoardLike(SqlSessionTemplate sqlSession, Like bl) {
		System.out.println("DAo확인bl"+bl);
		int a = sqlSession.selectOne("boardMapper.selectBoardLike", bl);

		System.out.println("Dao확인a:"+a);
		return a;
	}
	
	public int checkLike(SqlSessionTemplate sqlSession, Like l) {
		return sqlSession.selectOne("boardMapper.checkLike", l);
	}
	
	public int deleteLike(SqlSessionTemplate sqlSession, Like l ) {
		return sqlSession.delete("boardMapper.deleteLike", l);
	}
	
	public int insertLike(SqlSessionTemplate sqlSession, Like l ) {
		return sqlSession.insert("boardMapper.insertLike", l);
	}
	
	public int test(SqlSessionTemplate sqlSession, Date date) {
		return sqlSession.update("boardMapper.test", date);
	}
}











