package com.kh.so1omon.product.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.product.model.dao.GroupBuyerDao;

@Service
public class GroupBuyerServiceImp implements GroupBuyerService{
	@Autowired
	private GroupBuyerDao gbDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
}
