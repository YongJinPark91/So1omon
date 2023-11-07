package com.kh.so1omon.common.model.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.so1omon.product.model.vo.Category;
import com.kh.so1omon.product.model.vo.Order;
import com.kh.so1omon.board.model.vo.Board;
import com.kh.so1omon.common.model.vo.Admin;
import com.kh.so1omon.common.model.vo.Alert;
import com.kh.so1omon.common.model.vo.Report;
import com.kh.so1omon.product.model.vo.Order;
import com.kh.so1omon.product.model.vo.OrderDetail;

@Repository
public class CommonDao {

	public ArrayList<Order> selectOrderListAD(SqlSessionTemplate sqlSession, long userNo){
		return (ArrayList)sqlSession.selectList("commonMapper.selectOrderListAD", userNo);
	}
	
	public ArrayList<Order> selectAllOrderListAD(SqlSessionTemplate sqlSession, int num, int limit, String keyword){
		
		int offset = (num -1) * limit;
		
		RowBounds rowBounds = new RowBounds(offset, limit);
System.out.println("컴다 : " + keyword);
		return (ArrayList)sqlSession.selectList("commonMapper.selectAllOrderListAD", keyword, rowBounds);
	}
	
	public Order selectOrderAD(SqlSessionTemplate sqlSession, long orderNo) {
		return sqlSession.selectOne("commonMapper.selectOrderAD", orderNo);
	}
	
	public ArrayList<OrderDetail> selectOrderDetailListAD(SqlSessionTemplate sqlSession, long orderNo){
		return (ArrayList)sqlSession.selectList("commonMapper.selectOrderDetailListAD", orderNo);
	}
	
	public int insertAlertAD(SqlSessionTemplate sqlSession, Alert a) {
		return sqlSession.insert("commonMapper.insertAlertAD", a);
	}
	
	public ArrayList<Report> selectReportListAD(SqlSessionTemplate sqlSession, int num, int limit, String result){
		
		int offset = (num - 1) * limit;
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("commonMapper.selectReportListAD", result, rowBounds);
	}
	
	public Report selectReportAD(SqlSessionTemplate sqlSession, int reportNo) {
		return sqlSession.selectOne("commonMapper.selectReportAD", reportNo);
	}
	
	
	public int updateReportAD(SqlSessionTemplate sqlSession, int reportNo) {
		return sqlSession.update("commonMapper.updateReportAD", reportNo);
	}

	public ArrayList<Alert> selectAlertList(SqlSessionTemplate sqlSession, long userNo){
		return (ArrayList)sqlSession.selectList("commonMapper.selectAlertList", userNo);
	}
	
	public int insertBoardAlert(SqlSessionTemplate sqlSession,Alert a) {
		return sqlSession.insert("commonMapper.insertBoardAlert", a);
	}
	
	public int deleteAlert(SqlSessionTemplate sqlSession, Map<String, Object> a) {
		return sqlSession.delete("commonMapper.deleteAlert", a);
	}

	public ArrayList<Category> selectMenu(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("commonMapper.selectMenu");
	}
	
	public Admin selectAdminHome(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("commonMapper.selectAdminHome");
	}
}
