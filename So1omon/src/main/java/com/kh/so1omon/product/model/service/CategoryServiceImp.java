package com.kh.so1omon.product.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.product.model.dao.CategoryDao;

@Service
public class CategoryServiceImp implements CategoryService{
	@Autowired
	private CategoryDao cDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
}
