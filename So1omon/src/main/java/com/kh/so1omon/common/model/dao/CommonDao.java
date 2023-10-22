package com.kh.so1omon.common.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.so1omon.product.model.vo.Order;

@Repository
public class CommonDao {

	public ArrayList<Order> selectOrderListAD(SqlSessionTemplate sqlSession, int userNo){
		return (ArrayList)sqlSession.selectList("commonMapper.selectOrderListAD", userNo);
	}
	
	public ArrayList<Order> selectAllOrderListAD(SqlSessionTemplate sqlSession, int num, int limit){
		
		int offset = (num -1) * limit;
		
		RowBounds rowBounds = new RowBounds(offset, limit);

		return (ArrayList)sqlSession.selectList("commonMapper.selectAllOrderListAD", null, rowBounds);
	}
}
