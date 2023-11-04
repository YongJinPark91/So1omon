package com.kh.so1omon.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.member.model.dao.PointDao;
import com.kh.so1omon.product.model.vo.Orders;

@Service
public class PointServiceImp implements PointService {
	
	@Autowired
	private PointDao pDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int paymentInsertPoint(Orders o) {
		return pDao.paymentInsertPoint(sqlSession, o);
	}
}
