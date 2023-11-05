package com.kh.so1omon.product.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.common.model.vo.Attachment;
import com.kh.so1omon.common.model.vo.PageInfo;
import com.kh.so1omon.product.model.dao.ProductDao;
import com.kh.so1omon.product.model.vo.Cart;
import com.kh.so1omon.product.model.vo.Category;
import com.kh.so1omon.product.model.vo.GroupBuy;
import com.kh.so1omon.product.model.vo.GroupBuyer;
import com.kh.so1omon.product.model.vo.HotBuy;
import com.kh.so1omon.product.model.vo.GroupEnroll;
import com.kh.so1omon.product.model.vo.Options;
import com.kh.so1omon.product.model.vo.Order;
import com.kh.so1omon.product.model.vo.Product;
import com.kh.so1omon.product.model.vo.Review;
import com.kh.so1omon.product.model.vo.Wish;

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
	public ArrayList<Product> productListAD(int num, int limit, String keyword) {
		return pDao.productListAD(sqlSession, num, limit, keyword);
	}

	@Override
	public ArrayList<Product> selectTopList() {
		return pDao.selectTopList(sqlSession);
	}
	
	@Override
	public Product productDetailAD(String productNo) {
		return pDao.productDetailAD(sqlSession, productNo);
	}

	@Override
	public ArrayList<Attachment> productDetailImgAD(String productNo) {
		return pDao.productDetailImgAD(sqlSession, productNo);
	}
	
	@Override
	public ArrayList<Options> productOptionsAD(String productNo) {
		return pDao.productOptionsAD(sqlSession, productNo);
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

	@Override
	public int insertProductImgAD(ArrayList<Attachment> atList) {
		return pDao.insertProductImgAD(sqlSession, atList);
	}

	@Override
	public int insertOptionsAD(ArrayList<Options> optList) {
		return pDao.insertOptionsAD(sqlSession, optList);
	}

	public ArrayList<Category> selectCategory() {
		return pDao.selectCategoryAD(sqlSession);
	}

	@Override
	public ArrayList<Product> selectShowMyCart(long userNo) {
		return pDao.selectShowMyCart(sqlSession,userNo);
	}

	@Override
	public int removeCart(Cart c) {
		return pDao.removeCart(sqlSession, c); 
	}

	@Override
	public ArrayList<Order> selectMyPageOrderList(long mno, PageInfo pi) {
		return pDao.selectMyPageOrderList(sqlSession, mno, pi);
	}


	@Override
	public int selectOrderListCount(long mno) {
		return pDao.selectOrderListCount(sqlSession, mno);
	}

	@Override
	public ArrayList<GroupBuy> selectGroupbuyListAD(int num, int limit, String type) {
		return pDao.selectGroupbuyListAD(sqlSession, num, limit, type);
	}

	@Override
	public GroupBuy selectGroupbuyAD(String gbuyNo) {
		return pDao.selectGroupbuyAD(sqlSession, gbuyNo);
	}

	@Override
	public ArrayList<Product> selectProduct(int categoryNo) {
		return pDao.selectProductAD(sqlSession, categoryNo);
	}

	@Override
	public int insertGroupbuyAD(GroupBuy g) {
		return pDao.insertGroupbuyAD(sqlSession, g);
	}
	
	@Override
	public int selectWishListCount(long mno) {
		return pDao.selectWishListCount(sqlSession, mno);
	}

	@Override
	public ArrayList<Review> selectMyPageReviewList(long mno) {
		return pDao.selectMyPageReviewList(sqlSession, mno);
	}

	@Override
	public ArrayList<Wish> selectMyPageWishList(long mno, PageInfo pi) {
		return pDao.selectMyPageWishList(sqlSession, mno, pi);
	}

	@Override
	public int deleteWish(Wish w) {
		return pDao.deleteWish(sqlSession, w);
	}

	
	@Override
	public ArrayList selectMyPageOrderList(long mno) {
		return null;
	}

	@Override
	public ArrayList<Cart> selectMyPageCart(long mno) {
		return pDao.selectMyPageCart(sqlSession, mno);
	}

	@Override
	public void startTimeCheck(String formattedNow) {
		pDao.startTimeCheck(sqlSession, formattedNow);
		
	}

	@Override
	public void endTimeCheck(String formattedNow) {
		pDao.endTimeCheck(sqlSession, formattedNow);
		
	}

	@Override
	public ArrayList<GroupBuy> selectGBuyList() {
		return pDao.selectGBuyList(sqlSession);
	}

	@Override
	public int selectWish(Wish w) {
		return pDao.selectWish(sqlSession,w);
	}

	@Override
	public int addWish(Wish w) {
		return pDao.addWish(sqlSession,w);
	}

	@Override
	public int removeWish(Wish w) {
		return pDao.removeWish(sqlSession,w);
	}
	public ArrayList<GroupBuy> checkGroupbuyList(String checkDate) {
		return pDao.checkGroupbuyList(sqlSession, checkDate);
	}


	@Override
	public ArrayList<Options> selectMyPageCartOption() {
		return pDao.selectMyPageCartOption(sqlSession);
	}

	@Override
	public int myPageRemoveCart(Cart c) {
		return pDao.myPageRemoveCart(sqlSession, c);
	}

	@Override
	public ArrayList<Product> selectProductList(String categoryS) {
		return pDao.selectProductList(sqlSession, categoryS);
	}

	@Override
	public int increseCount(String pno) {
		return pDao.increseCount(sqlSession, pno);
	}

	public ArrayList<Review> selectReviewListAD(long userNo) {
		return pDao.selectReviewListAD(sqlSession, userNo);
	}

	@Override
	public ArrayList<Review> selectReviewList(String productNo) {
		return pDao.selectReviewList(sqlSession, productNo);
	}

	@Override
	public ArrayList<GroupBuy> selectGroupBuyList(String categoryL) {
		return pDao.selectGroupbuyList(sqlSession, categoryL);
	}

	@Override
	public ArrayList<Product> selectNormalController(String keyword, String changeKey) {
		return pDao.selectNormalController(sqlSession, keyword, changeKey);
	}

	@Override
	public ArrayList<GroupBuy> selectGroupController(String keyword) {
		return pDao.selectGroupController(sqlSession, keyword);
	}
	
	@Override
	public int showMyWish(long userNo) {
		return pDao.showMyWish(sqlSession, userNo);
	}
		
	@Override
	public int checkReview(HashMap<String, Object> map) {
		return pDao.checkReview(sqlSession, map);
	}


	@Override
	public int checkWish(Wish w) {
		return pDao.checkWish(sqlSession, w);
	}

	@Override
	public int insertCart(ArrayList<Cart> cList) {
		return pDao.insertCart(sqlSession, cList);
	}

	@Override
	public int updateCart(ArrayList<Cart> uList) {
		return pDao.updateCart(sqlSession, uList);
	}

	@Override
	public ArrayList<Product> selectRecommend(String productNo) {
		return pDao.selectRecommend(sqlSession, productNo);
	}

	@Override
	public int MyPageUpdateCart(ArrayList<Cart> updateCartList) {
		return pDao.MyPageUpdateCart(sqlSession, updateCartList);
	}


	
	@Override
	public GroupBuy selectGroupProduct(String gno) {
		return pDao.selectGroupProduct(sqlSession, gno);
	}

	@Override
	public ArrayList<HotBuy> selectHotBuyList() {
		return pDao.selectHotBuyList(sqlSession);
	}
	public ArrayList<GroupEnroll> selectGroupEnrollList(String gno) {
		return pDao.selectGroupEnrollList(sqlSession, gno);
	}


	@Override
	public void hotStartTimeCheck(String formattedNow) {
		pDao.updateHotBuyStrat(sqlSession, formattedNow);
		
	}

	@Override
	public void hotEndTimeCheck(String formattedNow) {
		pDao.updateHotBuyEnd(sqlSession, formattedNow);
		
	}

	@Override
	public ArrayList<HotBuy> selectHotList(String categoryL) {
		return pDao.selectHotList(sqlSession, categoryL);
	}

	@Override
	public ArrayList<HotBuy> selectTimeDeal() {
		return pDao.selectTimeDeal(sqlSession);
	}

	@Override
	public ArrayList<Cart> mainSelectCart(long userNo) {
		return pDao.mainSelectCart(sqlSession, userNo);
	}

	@Override
	public Product selectGroupProduct(int gno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int selectPointYJ(long userNo) {
		return pDao.selectPointYJ(sqlSession, userNo);
	}

	@Override
	public int insertGroupEnroll(GroupEnroll e) {
		return pDao.insertGroupEnroll(sqlSession, e);
	}

	@Override
	public int insertGroupBuyer(GroupBuyer gb) {
		return pDao.insertGroupBuyer(sqlSession, gb);
	}

	@Override
	public ArrayList<GroupBuyer> checkGroupEnroll(String gbuyNo) {
		return pDao.checkGroupEnroll(sqlSession, gbuyNo);
	}

	@Override
	public int checkGroupBuyer(int enrollNo) {
		return pDao.checkGroupBuyer(sqlSession, enrollNo);
	}

	@Override
	public ArrayList<GroupBuyer> selectGroupBuyer(GroupBuyer gb) {
		return pDao.selectGroupBuyer(sqlSession, gb);
	}

	@Override
	public int insertHotbuyAD(GroupBuy g) {
		return pDao.insertHotbuyAD(sqlSession, g);
	}

	@Override
	public int updateProductSale(GroupBuy g) {
		return pDao.updateProductSale(sqlSession, g);
	}

	@Override
	public int checkInsertEvnectProduct(GroupBuy g) {
		return pDao.checkInsertEventProduct(sqlSession, g);
	}

}
