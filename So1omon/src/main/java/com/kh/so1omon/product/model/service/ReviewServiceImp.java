package com.kh.so1omon.product.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.product.model.dao.ReviewDao;

@Service
public class ReviewServiceImp implements ReivewService{
	@Autowired
	private ReviewDao rDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
}
