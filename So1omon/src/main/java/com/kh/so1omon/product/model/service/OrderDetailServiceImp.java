package com.kh.so1omon.product.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.product.model.dao.OrderDetailDao;

@Service
public class OrderDetailServiceImp implements OrderDetailService{
	@Autowired
	private OrderDetailDao odDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
}
