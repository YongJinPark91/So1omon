package com.kh.so1omon.member.model.service;

import com.kh.so1omon.product.model.vo.Orders;

public interface PointService {
	
	// 결제 후 포인트 사용, 적립 내역 insert
	int paymentInsertPoint(Orders o);

}
