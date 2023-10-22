package com.kh.so1omon.board.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;

import org.springframework.stereotype.Repository;

import com.kh.so1omon.board.model.vo.Board;
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
}











