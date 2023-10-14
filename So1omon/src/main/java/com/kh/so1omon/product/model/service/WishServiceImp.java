package com.kh.so1omon.product.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.product.model.dao.WishDao;

@Service
public class WishServiceImp implements WishService{
	@Autowired
	private WishDao wDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
}
