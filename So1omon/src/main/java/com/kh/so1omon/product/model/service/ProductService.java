package com.kh.so1omon.product.model.service;

import java.util.ArrayList;

import com.kh.so1omon.common.model.vo.Attachment;
import com.kh.so1omon.common.model.vo.PageInfo;
import com.kh.so1omon.product.model.vo.Cart;
import com.kh.so1omon.product.model.vo.Category;
import com.kh.so1omon.product.model.vo.GroupBuy;
import com.kh.so1omon.product.model.vo.Options;
import com.kh.so1omon.product.model.vo.Order;
import com.kh.so1omon.product.model.vo.Product;
import com.kh.so1omon.product.model.vo.Review;
import com.kh.so1omon.product.model.vo.Wish;

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
	// 메인페이지 장바구니
	ArrayList<Product> selectShowMyCart(int userNo);
	
	// 메인페이지 장바구니 상품 삭제
	int removeCart(Cart c);
	

	// 마이페이지 주문내역 조회
	ArrayList<Order> selectMyPageOrderList(int mno, PageInfo pi);
	
	// 마이페이지 주문내역 리스트갯수 조회
	int selectOrderListCount(int mno);
	
	// 마이페이지 찜목록 리스트 갯수 조회
	int selectWishListCount(int mno);
	
	// 마이페이지 리뷰 리스트 조회
	ArrayList<Review> selectMyPageReviewList(int mno);
	
	// 마이페이지 찜목록 리스트 조회
	ArrayList<Wish> selectMyPageWishList(int mno, PageInfo pi);

	// 관리자페이지 회원 작성 리뷰 조회
	ArrayList<Review> selectReviewListAD(int userNo);
	
	// 마이페이지 찜목록 삭제
	int deleteWish(Wish w);
	

	ArrayList selectMyPageOrderList(int mno);
	
	// 관리자페이지 회원 작성 리뷰 조회
	ArrayList<Review> selectReviewListAD(int userNo);

	// 관리자페이지 공동구매,핫딜 리스트 조회
	ArrayList<GroupBuy> selectGroupbuyListAD(int num, int limit, String type);
	
	// 관리자페이지 공동구매, 핫딜 조회
	GroupBuy selectGroupbyAD(int gbuyNo);
	
	// 관리자페이지 공동구매상품 등록 상품 ajax 조회
	ArrayList<Product> selectProduct(int categoryNo);
	
	int insertGroupbuyAD(GroupBuy g);
	
}
