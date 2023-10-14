package com.kh.so1omon.product.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.product.model.dao.OrderDao;

@Service
public class OrderServiceImp implements OrderService{
	@Autowired
	private OrderDao oDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
}
