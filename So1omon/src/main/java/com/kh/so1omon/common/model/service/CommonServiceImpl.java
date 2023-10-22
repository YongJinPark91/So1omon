package com.kh.so1omon.common.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.common.model.dao.CommonDao;
import com.kh.so1omon.product.model.vo.Order;

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
	public ArrayList<Order> selectAllOrderListAD(int num, int limit) {
		return cDao.selectAllOrderListAD(sqlSession, num, limit);
	}
	

}
