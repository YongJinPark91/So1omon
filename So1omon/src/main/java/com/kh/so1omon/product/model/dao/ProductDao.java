package com.kh.so1omon.product.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.so1omon.common.model.vo.Attachment;
import com.kh.so1omon.product.model.vo.Category;
import com.kh.so1omon.product.model.vo.Product;

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
	
	public ArrayList<Category> selectCategoryAD(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("productMapper.selectCategoryAD");
	}
	
	public ArrayList<Category> selectCategorySmallAD(SqlSessionTemplate sqlSession, String categoryL){
		return (ArrayList)sqlSession.selectList("productMapper.selectCategorySmallAD", categoryL);
	}
	
	public int insertProductAD(SqlSessionTemplate sqlSession, Product p) {
		return sqlSession.insert("productMapper.insertProductAD", p);
	}
	
}
