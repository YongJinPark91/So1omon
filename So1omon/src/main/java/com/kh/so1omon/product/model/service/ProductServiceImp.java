package com.kh.so1omon.product.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.product.model.dao.ProductDao;
import com.kh.so1omon.product.model.vo.Product;

@Service
public class ProductServiceImp implements ProductService {

	@Autowired
	private static ProductDao pDao;
	
	@Autowired
	private static SqlSessionTemplate sqlSession;
	
	@Override
	public ArrayList<Product> searchProduct(String keyword) {

		return pDao.searchProduct(sqlSession, keyword);
	}
}
