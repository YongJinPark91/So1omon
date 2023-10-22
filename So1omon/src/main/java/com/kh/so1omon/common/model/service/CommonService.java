package com.kh.so1omon.common.model.service;

import java.util.ArrayList;

import com.kh.so1omon.product.model.vo.Order;

public interface CommonService {

	
	// 관리자페이지 회원 상세 주문조회
	ArrayList<Order> selectOrderListAD(int userNo);
	
	// 관리자페이지 주문 전체 조회
	ArrayList<Order> selectAllOrderListAD(int num, int limit);
}
