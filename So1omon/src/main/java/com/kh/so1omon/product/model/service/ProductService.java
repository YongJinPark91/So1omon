package com.kh.so1omon.product.model.service;

import java.util.ArrayList;

import com.kh.so1omon.common.model.vo.Attachment;
import com.kh.so1omon.product.model.vo.Category;
import com.kh.so1omon.product.model.vo.Product;

public interface ProductService {

	public ArrayList<Product> searchProduct(String keyword);
	
	public ArrayList<Product> productListAD(int num, int limit);
	
	// 3. 메인페이지 인기상품 조회
	ArrayList<Product> selectTopList();
	ArrayList<Product> productListAD(int num, int limit);
	
	Product productDetailAD(String productNo);
	
	ArrayList<Attachment> productDetailImgAD(String productNo);
	
	ArrayList<Category> selectCategoryAD();
	
	ArrayList<Category> selectCategorySmallAD(String categoryL);
	
	int insertProductAD(Product p);
	
}
