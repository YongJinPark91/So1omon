package com.kh.so1omon.product.model.service;

import java.util.ArrayList;

import com.kh.so1omon.common.model.vo.Attachment;
import com.kh.so1omon.product.model.vo.Category;
import com.kh.so1omon.product.model.vo.Options;
import com.kh.so1omon.product.model.vo.Product;

public interface ProductService {

	public ArrayList<Product> searchProduct(String keyword);
	
	
	// 3. 메인페이지 인기상품 조회
	ArrayList<Product> selectTopList();

	
	// 관리자페이지 상품조회
	ArrayList<Product> productListAD(int num, int limit);
	
	// 관리자페이지 상품상세
	Product productDetailAD(String productNo);
	
	// 관리자페이지 상품상세 (이미지)
	ArrayList<Attachment> productDetailImgAD(String productNo);
	
	// 관리자페이지 상품상세 (옵션)
	ArrayList<Options> productOptionsAD(String productNo);
	
	// 관리자페이지 상품등록에서 대분류 카테고리 가져오기
	ArrayList<Category> selectCategoryAD();
	
	// 관리자페이지 상품등록에서 대분류에 따르는 소분류 가져오기
	ArrayList<Category> selectCategorySmallAD(String categoryL);
	
	// 관리자페이지 상품등록
	int insertProductAD(Product p);
	
	// 관리자페이지 상품등록 상세이미지 insert
	int insertProductImgAD(ArrayList<Attachment> atList);
	
	// 관리자페이지 상품등록 옵션 insert
	int insertOptionsAD(ArrayList<Options> optList);
	
	// 관리자페이지 상품수정
	
	// 마이페이지 주문내역 조회
	ArrayList selectMyPageOrderList(int mno);
}
