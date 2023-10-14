package com.kh.so1omon.product.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.product.model.dao.GroupBuyerDao;

@Service
public class GroupBuyServiceImp implements GroupBuyService {
	@Autowired
	private GroupBuyDao gbDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
}
