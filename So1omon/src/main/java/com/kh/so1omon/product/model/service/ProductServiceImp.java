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
	private ProductDao pDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public ArrayList<Product> searchProduct(String keyword) {
		System.out.println("productServiceImpl keyword" + keyword);
		return pDao.searchProduct(sqlSession, keyword);
	}

	@Override
	public ArrayList<Product> productListAD(int num, int limit) {
		return pDao.productListAD(sqlSession, num, limit);
	}

	@Override
	public ArrayList<Product> selectTopList() {
		return pDao.selectTopList(sqlSession);
	}

	
}
