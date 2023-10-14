package com.kh.so1omon.product.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.product.model.dao.OptionsDao;

@Service
public class OptionsServiceImp implements OptionsService{
	@Autowired
	private OptionsDao oDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
}
