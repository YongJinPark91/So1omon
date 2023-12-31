package com.kh.so1omon.product.model.service;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;

import com.kh.so1omon.common.model.vo.Attachment;
import com.kh.so1omon.common.model.vo.PageInfo;
import com.kh.so1omon.member.model.vo.Member;
import com.kh.so1omon.product.model.vo.Cart;
import com.kh.so1omon.product.model.vo.Category;
import com.kh.so1omon.product.model.vo.GroupBuy;
import com.kh.so1omon.product.model.vo.GroupBuyer;
import com.kh.so1omon.product.model.vo.HotBuy;
import com.kh.so1omon.product.model.vo.GroupEnroll;
import com.kh.so1omon.product.model.vo.Options;
import com.kh.so1omon.product.model.vo.Order;
import com.kh.so1omon.product.model.vo.Orders;
import com.kh.so1omon.product.model.vo.Product;
import com.kh.so1omon.product.model.vo.Review;
import com.kh.so1omon.product.model.vo.Wish;

public interface ProductService {

	public ArrayList<Product> searchProduct(String keyword);
	
	
	// 3. 메인페이지 인기상품 조회
	ArrayList<Product> selectTopList();

	
	// 관리자페이지 상품조회
	ArrayList<Product> productListAD(int num, int limit, String keyword);
	
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
	ArrayList<Review> selectReviewListAD(long userNo);
	
	// 메인페이지 장바구니
	ArrayList<Product> selectShowMyCart(long userNo);
	
	// 메인페이지 장바구니 상품 삭제
	int removeCart(Cart c);

	// 마이페이지 주문내역 조회
	ArrayList<Order> selectMyPageOrderList(long mno, PageInfo pi);
	
	// 마이페이지 주문내역 리스트갯수 조회
	int selectOrderListCount(long mno);
	
	// 마이페이지 찜목록 리스트 갯수 조회
	int selectWishListCount(long mno);
	
	// 마이페이지 리뷰 리스트 조회
	ArrayList<Review> selectMyPageReviewList(long mno);
	
	// 마이페이지 찜목록 리스트 조회
	ArrayList<Wish> selectMyPageWishList(long mno, PageInfo pi);
	
	// 마이페이지 찜목록 삭제
	int deleteWish(Wish w);
	
	// 마이페이지 주문내역 리스트 조회
	ArrayList selectMyPageOrderList(long mno);

	// 관리자페이지 공동구매,핫딜 리스트 조회
	ArrayList<GroupBuy> selectGroupbuyListAD(int num, int limit, String type);
	
	// 관리자페이지 공동구매, 핫딜 조회
	GroupBuy selectGroupbuyAD(String gbuyNo);
	
	// 관리자페이지 공동구매상품 등록 상품 ajax 조회
	ArrayList<Product> selectProduct(int categoryNo);
	
	int insertGroupbuyAD(GroupBuy g);
	
	// 마이페이지 장바구니 리스트, 마이페이지 로딩 후 장바구니 리스트에 옵션 리스트 조회
	ArrayList<Cart> selectMyPageCart(long mno);

	
	// 스케쥴러 활용 상태 변경(시작)
	void startTimeCheck(String formattedNow);
	
	// 스케쥴러 활용 상태 변경(종료)
	void endTimeCheck(String formattedNow);
	
	// 스케쥴러 활용 상태 변경(시작)
	void hotStartTimeCheck(String formattedNow);
	
	// 스케쥴러 활용 상태 변경(종료)
	void hotEndTimeCheck(String formattedNow);
	
	
	
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
	ArrayList<Product> selectProductList(String categoryS);
	
	// 상품조회수 증가
	int increseCount(String pno);
	
	// 상품 상세 리뷰 리스트
	ArrayList<Review> selectReviewList(String productNo);
	
	// 공동구매상품 리스트 조회
	ArrayList<GroupBuy> selectGroupBuyList(String categoryL);
	
	// 일반상품리스트 조회방법 변경
	ArrayList<Product> selectNormalController(String keyword, String changeKey);
	
	// 공구상품리스트 조회방법 변경
	ArrayList<GroupBuy> selectGroupController(String keyword);
	
	// 헤더, myWish 리스트 가져오기
	int showMyWish(long userNo);
	
	// 메인페이지 핫딜 리스트 가져오기
	ArrayList<HotBuy> selectHotBuyList();
	
	// 핫딜 리스트 조회
	ArrayList<HotBuy> selectHotList(String categoryL);
	
	// 메인페이지 핫딜예정 리스트 가져오기
	ArrayList<HotBuy> selectTimeDeal();

	// 리뷰 작성 가능 여부 체크
	int checkReview(HashMap<String, Object> map);
	
	// 장바구니 추가
	int insertCart(ArrayList<Cart> cList);
	
	// 위시 있는지 없는지 체크
	int checkWish(Wish w);
	
	// 장바구니 업데이트
	int updateCart(ArrayList<Cart> uList);
	
	// 상품상세화면 관련 상품 조회
	ArrayList<Product> selectRecommend(String productNo);
	
	// 마이페이지 장바구니 개수 업데이트
	int MyPageUpdateCart(ArrayList<Cart> updateCartList);
	
	
	// 공동구매 조회
	GroupBuy selectGroupProduct(String gno);
	
	// 공동구매 등록 조회
	ArrayList<GroupEnroll> selectGroupEnrollList(String gno);	
	
	// 공동구매 등록
	int insertGroupEnroll(GroupEnroll e);
	int insertGroupBuyer(GroupBuyer gb);
	
	// 공동구매 체크
	ArrayList<GroupBuyer> checkGroupEnroll(String gbuyNo);
	int checkGroupBuyer(int enrollNo);
	ArrayList<GroupBuyer> selectGroupBuyer(GroupBuyer gb);
	
	Product selectGroupProduct(int gno);
	
	// 메인페이지 장바구니 조회
	ArrayList<Cart> mainSelectCart(long userNo);
	
	// 마이페이지에서 포인트 가져오기
	int selectPointYJ(long userNo);
	
	// 결제 후 모든 insert, update, delete
	int paymentInsertOrder(Orders o);
	int paymentInsertOrderDetail(Orders o);
	int paymentUpdateStock(Orders o);
	int paymentDeleteCart(Orders o);
	
	// 비회원 정보 페이지
	ArrayList<Cart> selectNoMemberCart(long userNo);
	
	// 비회원 찜하기
	ArrayList<Wish> selectNoMemberWish(long userNo);
	
	// 핫딜 insert
	int insertHotbuyAD(GroupBuy g);
	
	// 핫딜&공동구매 insert시 상품 sale update
	int updateProductSale(GroupBuy g);
	
	// 핫딜&공동구매 
	int checkInsertEvnectProduct(GroupBuy g);
	
	//리뷰작성
	int insertReview(Review r);


	ArrayList<Order> myReview(ArrayList<Order> mpOrderList, long mno);
	
	//리뷰체크
	//int myReview(Review re);
	// 리뷰 사진
	int insertReviewImg(Attachment at);
	// 관리자페이지 홈
	ArrayList<Order> selectOrderAdMain();
	
}
