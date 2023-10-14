package com.kh.so1omon.product.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.product.model.dao.CartDao;

@Service
public class CartServiceImp implements CartService{
	@Autowired
	private CartDao cDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
}
