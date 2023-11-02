package com.kh.so1omon.common.model.service;

import java.util.ArrayList;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.board.model.vo.Board;
import com.kh.so1omon.common.model.dao.CommonDao;
import com.kh.so1omon.product.model.vo.Category;
import com.kh.so1omon.product.model.vo.Order;
import com.kh.so1omon.common.model.vo.Alert;
import com.kh.so1omon.common.model.vo.Report;
import com.kh.so1omon.product.model.vo.Order;
import com.kh.so1omon.product.model.vo.OrderDetail;

@Service
public class CommonServiceImpl implements CommonService {
	
	@Autowired
	private CommonDao cDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public ArrayList<Order> selectOrderListAD(int userNo) {
		return cDao.selectOrderListAD(sqlSession, userNo);
	}


	@Override
	public ArrayList<Order> selectAllOrderListAD(int num, int limit, String keyword) {
		return cDao.selectAllOrderListAD(sqlSession, num, limit, keyword);
	}

	@Override
	public Order selectOrderAD(long orderNo) {
		return cDao.selectOrderAD(sqlSession, orderNo);
	}
	
	@Override
	public ArrayList<OrderDetail> selectOrderDetailListAD(long orderNo) {
		return cDao.selectOrderDetailListAD(sqlSession, orderNo);
	}

	@Override
	public int insertAlertAD(Alert a) {
		return cDao.insertAlertAD(sqlSession, a);
	}

	@Override
	public ArrayList<Report> selectReportListAD(int num, int limit, String result) {
		return cDao.selectReportListAD(sqlSession, num, limit, result);
	}

	@Override
	public Report selectReportAD(int reportNo) {
		return cDao.selectReportAD(sqlSession, reportNo);
	}

	@Override
	public int updateReportAD(int reportNo) {
		return cDao.updateReportAD(sqlSession, reportNo);
	}


	@Override
	public ArrayList<Alert> selectAlertList(int userNo) {
		return cDao.selectAlertList(sqlSession, userNo);
	}


	@Override
	public int insertBoardAlert(Alert a) {
		return cDao.insertBoardAlert(sqlSession, a);
	}

	@Override
	public int deleteAlert(Map<String, Object> a) {
		return cDao.deleteAlert(sqlSession, a);
	}


	@Override
	public ArrayList<Category> selectMenu() {
		return cDao.selectMenu(sqlSession);
	}

}
