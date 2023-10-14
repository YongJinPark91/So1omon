package com.kh.so1omon.product.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.product.model.dao.NMemberCartDao;

@Service
public class NMemberCartServiceImp implements NMemberCartService {
	@Autowired
	private NMemberCartDao nmDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

}
