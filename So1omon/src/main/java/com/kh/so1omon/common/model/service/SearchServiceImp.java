package com.kh.so1omon.common.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.common.model.dao.SearchDao;

@Service
public class SearchServiceImp implements SearchService{
	@Autowired
	private SearchDao sDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
}
