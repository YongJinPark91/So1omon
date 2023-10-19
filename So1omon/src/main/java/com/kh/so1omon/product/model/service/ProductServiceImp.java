package com.kh.so1omon.product.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.common.model.vo.Attachment;
import com.kh.so1omon.product.model.dao.ProductDao;
import com.kh.so1omon.product.model.vo.Category;
import com.kh.so1omon.product.model.vo.Product;

@Service
public class ProductServiceImp implements ProductService {

	@Autowired
	private ProductDao pDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * @jw(10.18)
	 * @header -> 검색어 'keyword'를 가지고 검색하여 값을 가지고 search.bo로 이동
	 */
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
	public Product productDetailAD(String productNo) {
		return pDao.productDetailAD(sqlSession, productNo);
	}

	@Override
	public ArrayList<Attachment> productDetailImgAD(String productNo) {
		return pDao.productDetailImgAD(sqlSession, productNo);
	}

	@Override
	public ArrayList<Category> selectCategoryAD() {
		return pDao.selectCategoryAD(sqlSession);
	}

	@Override
	public ArrayList<Category> selectCategorySmallAD(String categoryL) {
		return pDao.selectCategorySmallAD(sqlSession, categoryL);
	}

	@Override
	public int insertProductAD(Product p) {
		return pDao.insertProductAD(sqlSession, p);
	}

	
}
