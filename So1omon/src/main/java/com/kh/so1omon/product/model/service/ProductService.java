package com.kh.so1omon.product.model.service;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;

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
	
	// 관리자페이지 리뷰리스트 조회
	ArrayList<Review> selectReviewListAD(int userNo);
	
	// 메인페이지 장바구니
	ArrayList<Product> selectShowMyCart(long userNo);
	
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
	
	// 마이페이지 찜목록 삭제
	int deleteWish(Wish w);
	
	// 마이페이지 주문내역 리스트 조회
	ArrayList selectMyPageOrderList(int mno);

	// 관리자페이지 공동구매,핫딜 리스트 조회
	ArrayList<GroupBuy> selectGroupbuyListAD(int num, int limit, String type);
	
	// 관리자페이지 공동구매, 핫딜 조회
	GroupBuy selectGroupbuyAD(int gbuyNo);
	
	// 관리자페이지 공동구매상품 등록 상품 ajax 조회
	ArrayList<Product> selectProduct(int categoryNo);
	
	int insertGroupbuyAD(GroupBuy g);
	
	// 마이페이지 장바구니 리스트, 마이페이지 로딩 후 장바구니 리스트에 옵션 리스트 조회
	ArrayList<Cart> selectMyPageCart(int mno);

	
	// 스케쥴러 활용 상태 변경(시작)
	void startTimeCheck(String formattedNow);
	
	// 스케쥴러 활용 상태 변경(종료)
	void endTimeCheck(String formattedNow);
	
	// 메인페이지 공동구매 데이터 조회
	ArrayList<GroupBuy> selectGBuyList();
	
	// 위시 조회
	int selectWish(Wish w);
	
	// 위시 추가
	int addWish(Wish w);
	
	// 위시 삭제
	int removeWish(Wish w);
	
	// 알림 리스트
	ArrayList<GroupBuy> checkGroupbuyList(String checkDate);
	
	// 상품의 옵션리스트
	ArrayList<Options> selectMyPageCartOption();
	
	// 마이페이지 장바구니 삭제
	int myPageRemoveCart(Cart c);
	
	// 전체상품 조회 리스트
	ArrayList<Product> selectProductList();
	
	// 상품조회수 증가
	int increseCount(String pno);
	
	// 상품 상세 리뷰 리스트
	ArrayList<Review> selectReviewList(String productNo);
	
	// 공동구매상품 리스트 조회
	ArrayList<GroupBuy> selectGroupBuyList();
	
	// 일반상품리스트 조회방법 변경
	ArrayList<Product> selectNormalController(String keyword);
	
	// 공구상품리스트 조회방법 변경
	ArrayList<GroupBuy> selectGroupController(String keyword);
	
	// 헤더, myWish 리스트 가져오기
	int showMyWish(long userNo);
	
	
	// 리뷰 작성 가능 여부 체크
	int checkReview(HashMap<String, Object> map);
	
	// 장바구니 추가
	int insertCart(ArrayList<Cart> cList);
	
	// 위시 있는지 없는지 체크
	int checkWish(Wish w);
	
	// 장바구니 업데이트
	int updateCart(ArrayList<Cart> uList);
	
	ArrayList<Product> selectRecommend(String productNo);
	
	Product selectGroupProduct(int gno);
}
