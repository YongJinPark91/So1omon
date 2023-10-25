package com.kh.so1omon.common.model.service;

import java.util.ArrayList;

import com.kh.so1omon.product.model.vo.Order;
import com.kh.so1omon.common.model.vo.Alert;
import com.kh.so1omon.common.model.vo.Report;
import com.kh.so1omon.product.model.vo.Order;
import com.kh.so1omon.product.model.vo.OrderDetail;

public interface CommonService {

	
	// 관리자페이지 회원 상세 주문조회
	ArrayList<Order> selectOrderListAD(int userNo);
	
	// 관리자페이지 주문 전체 조회
	ArrayList<Order> selectAllOrderListAD(int num, int limit);
	ArrayList<Order> selectAllOrderListAD(int num, int limit, String keyword);
	
	// 관리자페에제 주문 상세 조회
	Order selectOrderAD(long orderNo);
	ArrayList<OrderDetail> selectOrderDetailListAD(long orderNo);
	
	// 관리자페이지 쪽지
	int insertAlertAD(Alert a);
	
	// 관리자페이지 신고 조회
	ArrayList<Report> selectReportListAD(int num, int limit, String result);
	Report selectReportAD(int reportNo);
	
	// 관리자페이지 신고 처리
	int updateReportAD(int reportNo);
}
