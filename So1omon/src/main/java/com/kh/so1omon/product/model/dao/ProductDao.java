package com.kh.so1omon.product.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.so1omon.common.model.vo.Attachment;
import com.kh.so1omon.common.model.vo.PageInfo;
import com.kh.so1omon.product.model.vo.Cart;
import com.kh.so1omon.product.model.vo.Category;
import com.kh.so1omon.product.model.vo.Options;
import com.kh.so1omon.product.model.vo.Order;
import com.kh.so1omon.product.model.vo.Product;
import com.kh.so1omon.product.model.vo.Review;
import com.kh.so1omon.product.model.vo.Wish;

@Repository
public class ProductDao {
	
	public ArrayList<Product> searchProduct(SqlSessionTemplate sqlSession, String keyword){
		return (ArrayList)sqlSession.selectList("productMapper.searchProduct", keyword);
	}
	
	
	public ArrayList<Product> productListAD(SqlSessionTemplate sqlSession, int num, int limit) {
		
		int offset = (num -1) * limit;
		
		RowBounds rowBounds = new RowBounds(offset, limit);

		return (ArrayList)sqlSession.selectList("productMapper.productListAD", null, rowBounds);
	}
	
	public ArrayList<Product> selectTopList(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("productMapper.selectTopList");
	}
	
	public Product productDetailAD(SqlSessionTemplate sqlSession, String productNo) {
		return sqlSession.selectOne("productMapper.productDetailAD", productNo);
	}
	
	public ArrayList<Attachment> productDetailImgAD(SqlSessionTemplate sqlSession, String productNo) {
		return (ArrayList)sqlSession.selectList("commonMapper.productDetailImgAD", productNo);
	}
	
	public ArrayList<Options> productOptionsAD(SqlSessionTemplate sqlSession, String productNo){
		return (ArrayList)sqlSession.selectList("productMapper.productOptionsAD", productNo);
	}
	
	public ArrayList<Category> selectCategoryAD(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("productMapper.selectCategoryAD");
	}
	
	public ArrayList<Category> selectCategorySmallAD(SqlSessionTemplate sqlSession, String categoryL){
		return (ArrayList)sqlSession.selectList("productMapper.selectCategorySmallAD", categoryL);
	}
	
	public int insertProductAD(SqlSessionTemplate sqlSession, Product p) {
		return sqlSession.insert("productMapper.insertProductAD", p);
	}
	
	public int insertProductImgAD(SqlSessionTemplate sqlSession, ArrayList<Attachment> atList) {
		int result = 0;
		for(Attachment at : atList) {
			result = sqlSession.insert("productMapper.insertProductImgAD", at);			
		}
		
		return result;
	}
	
	public int insertOptionsAD(SqlSessionTemplate sqlSession, ArrayList<Options> optList) {
		int result = 0;
		for(Options opt : optList) {
			result = sqlSession.insert("productMapper.insertOptionsAD", opt);
		}
		
		return result;
	}


	public ArrayList<Product> selectShowMyCart(SqlSessionTemplate sqlSession, int userNo) {
		return (ArrayList)sqlSession.selectList("productMapper.selectShowMyCart", userNo);
	}


	public int removeCart(SqlSessionTemplate sqlSession, Cart c) {
		return sqlSession.delete("productMapper.success", c);
	}
	
	public ArrayList<Order> selectMyPageOrderList(SqlSessionTemplate sqlSession, int mno, PageInfo pi) {
		
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("productMapper.selectMyPageOrderList", mno, rowBounds);
	}
	
	public int selectOrderListCount(SqlSessionTemplate sqlSession, int mno) {
		return sqlSession.selectOne("productMapper.selectOrderListCount", mno);
	}
	
	public ArrayList<Review> selectMyPageReviewList(SqlSessionTemplate sqlSession, int mno){
		return (ArrayList)sqlSession.selectList("productMapper.selectMyPageReviewList", mno);
	}
	
	public ArrayList<Wish> selectMyPageWishList(SqlSessionTemplate sqlSession, int mno, PageInfo pi){
		
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("produvtMapper.selectMyPageWishList", mno, rowBounds);
	}
	
	

//	public ArrayList selectMyPageOrderList(SqlSessionTemplate sqlSession, int mno) {
//		return (ArrayList)sqlSession.selectList("productMapper.selectMyPageOrderList", mno);
//	}
	

	public ArrayList<Review> selectReviewListAD(SqlSessionTemplate sqlSession, int userNo){
		return (ArrayList)sqlSession.selectList("productMapper.selectReviewListAD", userNo);
	}

	
}
