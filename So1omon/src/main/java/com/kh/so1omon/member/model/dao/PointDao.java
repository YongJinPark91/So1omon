package com.kh.so1omon.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.so1omon.member.model.vo.Point;
import com.kh.so1omon.product.model.vo.Orders;

@Repository
public class PointDao {
	
	public int paymentInsertPoint(SqlSessionTemplate sqlSession, Orders o) {
		long totalPrice = o.getTotalPrice();
		int result = 0;
		Point point = new Point();
		
		// 사용포인트에 "-" 붙여서 insert
		point.setUserNo(o.getUserNo());
		point.setPointDate(o.getOrderDate());
		point.setReason("포인트 사용");
		point.setPoint("-" + o.getPoint());
		
		// point에 저장한 그대로 insert 
		int usePointResultAdd = sqlSession.insert("memberMapper.paymentInsertPoint", point);
		
		if(usePointResultAdd > 0) {
			result++;
		}
		
		// 상품 구매시 총 금액의 10%  "+" 붙여서 적립 insert
		long getPoint = (long)(totalPrice*0.05); // 적립할 금액 계산해서 변수 저장
		
		point.setUserNo(o.getUserNo());
		point.setPointDate(o.getOrderDate());
		point.setReason("포인트 적립");
		point.setPoint("+" + getPoint);
		
		// point에 저장한 그대로 insert
		int getPointResultAdd = sqlSession.insert("memberMapper.paymentInsertPoint", point);
		
		if(getPointResultAdd > 0) {
			result++;
		}
		
		// 둘중 하나라도 성공하면 1리턴 ( 어차피 적립은 무조건 되므로 성공하면 1은 나옴)
		if(result > 0) {
			return 1;
		}else { //둘다 실패시 0리턴
			return 0;
		}
	}

}
