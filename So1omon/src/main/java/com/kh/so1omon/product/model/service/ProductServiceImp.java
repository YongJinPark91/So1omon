package com.kh.so1omon.product.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.common.model.vo.Attachment;
import com.kh.so1omon.common.model.vo.PageInfo;
import com.kh.so1omon.product.model.dao.ProductDao;
import com.kh.so1omon.product.model.vo.Cart;
import com.kh.so1omon.product.model.vo.Category;
import com.kh.so1omon.product.model.vo.GroupBuy;
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
	public ArrayList<Product> productListAD(int num, int limit) {
		return pDao.productListAD(sqlSession, num, limit);
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
	public ArrayList<Product> selectShowMyCart(int userNo) {
		return pDao.selectShowMyCart(sqlSession,userNo);
	}

	@Override
	public int removeCart(Cart c) {
		return pDao.removeCart(sqlSession, c); 
	}

	@Override
	public ArrayList<Order> selectMyPageOrderList(int mno, PageInfo pi) {
		return pDao.selectMyPageOrderList(sqlSession, mno, pi);
	}


	@Override
	public int selectOrderListCount(int mno) {
		return pDao.selectOrderListCount(sqlSession, mno);
	}

	@Override
	public ArrayList<GroupBuy> selectGroupbuyListAD(int num, int limit, String type) {
		return pDao.selectGroupbuyListAD(sqlSession, num, limit, type);
	}

	@Override
	public GroupBuy selectGroupbuyAD(int gbuyNo) {
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
	public int selectWishListCount(int mno) {
		return pDao.selectWishListCount(sqlSession, mno);
	}

	@Override
	public ArrayList<Review> selectMyPageReviewList(int mno) {
		return pDao.selectMyPageReviewList(sqlSession, mno);
	}

	@Override
	public ArrayList<Wish> selectMyPageWishList(int mno, PageInfo pi) {
		return pDao.selectMyPageWishList(sqlSession, mno, pi);
	}

	@Override
	public int deleteWish(Wish w) {
		return pDao.deleteWish(sqlSession, w);
	}

	
	@Override
	public ArrayList selectMyPageOrderList(int mno) {
		return null;
	}

	@Override
	public ArrayList<Cart> selectMyPageCart(int mno) {
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
	public ArrayList<Product> selectProductList() {
		return pDao.selectProductList(sqlSession);
	}

	@Override
	public int increseCount(String pno) {
		return pDao.increseCount(sqlSession, pno);
	}

	

}
