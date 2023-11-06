package com.kh.so1omon.product.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.so1omon.common.model.vo.Attachment;
import com.kh.so1omon.common.model.vo.PageInfo;
import com.kh.so1omon.member.model.vo.Member;
import com.kh.so1omon.member.model.vo.Point;
import com.kh.so1omon.product.model.vo.Cart;
import com.kh.so1omon.product.model.vo.Category;
import com.kh.so1omon.product.model.vo.GroupBuy;
import com.kh.so1omon.product.model.vo.GroupBuyer;
import com.kh.so1omon.product.model.vo.HotBuy;
import com.kh.so1omon.product.model.vo.GroupEnroll;
import com.kh.so1omon.product.model.vo.Options;
import com.kh.so1omon.product.model.vo.Order;
import com.kh.so1omon.product.model.vo.OrderDetail;
import com.kh.so1omon.product.model.vo.Orders;
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


	public ArrayList<Product> selectShowMyCart(SqlSessionTemplate sqlSession, long userNo) {
		return (ArrayList)sqlSession.selectList("productMapper.selectShowMyCart", userNo);
	}


	public int removeCart(SqlSessionTemplate sqlSession, Cart c) {
		return sqlSession.delete("productMapper.success", c);
	}
	
	public ArrayList<Order> selectMyPageOrderList(SqlSessionTemplate sqlSession, long mno, PageInfo pi) {
		
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("productMapper.selectMyPageOrderList", mno, rowBounds);
	}
	
	public int selectOrderListCount(SqlSessionTemplate sqlSession, long mno) {
		return sqlSession.selectOne("productMapper.selectOrderListCount", mno);
	}
	
	public int selectWishListCount(SqlSessionTemplate sqlSession, long mno) {
		return sqlSession.selectOne("productMapper.selectWishListCount", mno);
	}
	
	public ArrayList<Review> selectMyPageReviewList(SqlSessionTemplate sqlSession, long mno){
		return (ArrayList)sqlSession.selectList("productMapper.selectMyPageReviewList", mno);
	}
	
	public ArrayList<Wish> selectMyPageWishList(SqlSessionTemplate sqlSession, long mno, PageInfo pi){
		
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("productMapper.selectMyPageWishList", mno, rowBounds);
	}

	public ArrayList<Review> selectReviewListAD(SqlSessionTemplate sqlSession, long userNo){
		return (ArrayList)sqlSession.selectList("productMapper.selectReviewListAD", userNo);
	}
	
	public int deleteWish(SqlSessionTemplate sqlSession, Wish w) {
		return sqlSession.delete("productMapper.deleteWish", w);
	}

	public ArrayList<GroupBuy> selectGroupbuyListAD(SqlSessionTemplate sqlSession, int num, int limit, String type){
		
		int offset = (num -1) * limit;
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("productMapper.selectGroupbuyListAD", type, rowBounds);
	}
	
	public GroupBuy selectGroupbuyAD(SqlSessionTemplate sqlSession, int gbuyNo) {
		return sqlSession.selectOne("productMapper.selectGroupbuyAD", gbuyNo);
	}
	
	public ArrayList<Product> selectProductAD(SqlSessionTemplate sqlSession, int categoryNo){
		return (ArrayList)sqlSession.selectList("productMapper.selectProductAD", categoryNo);
	}
	
	public int insertGroupbuyAD(SqlSessionTemplate sqlSession, GroupBuy g) {
		return sqlSession.insert("productMapper.insertGroupbuyAD", g);
	}


	public void startTimeCheck(SqlSessionTemplate sqlSession, String formattedNow) {
		sqlSession.update("productMapper.startTimeCheck", formattedNow);
	}

	public void endTimeCheck(SqlSessionTemplate sqlSession, String formattedNow) {
		sqlSession.update("productMapper.endTimeCheck", formattedNow);
	}


	public ArrayList<GroupBuy> selectGBuyList(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("productMapper.selectGBuyList");
	}


	public int selectWish(SqlSessionTemplate sqlSession, Wish w) {
		return sqlSession.selectOne("productMapper.selectWish",w);
	}


	public int addWish(SqlSessionTemplate sqlSession, Wish w) {
		return sqlSession.insert("productMapper.addWish",w);
	}


	public int removeWish(SqlSessionTemplate sqlSession, Wish w) {
		return sqlSession.delete("productMapper.removeWish",w);
	}

	
	public ArrayList<GroupBuy> checkGroupbuyList(SqlSessionTemplate sqlSession, String checkDate){
		return (ArrayList)sqlSession.selectList("productMapper.checkGroupbuyList", checkDate);
	}


	public ArrayList<Product> selectProductList(SqlSessionTemplate sqlSession, String categoryS) {
		return (ArrayList)sqlSession.selectList("productMapper.selectProductList", categoryS);
	}


	public int increseCount(SqlSessionTemplate sqlSession, String pno) {
		return sqlSession.update("productMapper.increseCount", pno);
	}
	
	public ArrayList<Cart> selectMyPageCart(SqlSessionTemplate sqlSession, long mno) {
		return (ArrayList)sqlSession.selectList("productMapper.selectMyPageCart", mno);
	}


	public ArrayList<GroupBuy> selectGroupbuyList(SqlSessionTemplate sqlSession, String categoryL) {
		return (ArrayList)sqlSession.selectList("productMapper.selectGroupBuyList", categoryL);
	}


	public ArrayList<Product> selectNormalController(SqlSessionTemplate sqlSession, String keyword, String changeKey) {
		if(keyword.equals("popularity")) {
			return (ArrayList)sqlSession.selectList("productMapper.selectNormalPopuarity", changeKey);
		}else if(keyword.equals("rating")) {
			return (ArrayList)sqlSession.selectList("productMapper.selectNormalRating", changeKey);
		}else if(keyword.equals("count")) {
			return (ArrayList)sqlSession.selectList("productMapper.selectNormalCount", changeKey);
		}else {
			return (ArrayList)sqlSession.selectList("productMapper.selectNormalDate", changeKey);
		}
	}


	public ArrayList<GroupBuy> selectGroupController(SqlSessionTemplate sqlSession, String keyword) {
		return (ArrayList)sqlSession.selectList("productMapper.selectGroupController", keyword);
	}
	
	public int showMyWish(SqlSessionTemplate sqlSession, long userNo) {
		System.out.println("여기는 DAO: "+userNo);
		return sqlSession.selectOne("memberMapper.showMyWish", userNo);
	}
	
	public ArrayList<Options> selectMyPageCartOption(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("productMapper.selectMyPageCartOption");
	}
	
	public int myPageRemoveCart(SqlSessionTemplate sqlSession, Cart c) {
		System.out.println("여기는 Dao+++++++++++++++");
		System.out.println(c.getUserNo());
		System.out.println(c.getOptionName());
		System.out.println(c.getProductNo());
		return sqlSession.delete("productMapper.myPageRemoveCart", c);
	}
	public ArrayList<Review> selectReviewList(SqlSessionTemplate sqlSession, String productNo){
		return (ArrayList)sqlSession.selectList("productMapper.selectReviewList", productNo);
	}
	
	public int checkReview(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
		return sqlSession.selectOne("productMapper.checkReview", map);
	}
	
	public int insertCart(SqlSessionTemplate sqlSession, ArrayList<Cart> cList) {
		int result = 0;
		
		for(Cart c : cList) {
			 result += sqlSession.insert("productMapper.addCart", c);			
		}
		
		return result;
	}
	
	public int checkWish(SqlSessionTemplate sqlSession, Wish w) {
		return sqlSession.selectOne("productMapper.checkWish", w);
	}
	
	public int updateCart(SqlSessionTemplate sqlSession, ArrayList<Cart> uList) {
		int result = 0;
		
		for(Cart c : uList) {
			result += sqlSession.update("productMapper.updateCart", c);			
		}
		
		return result;
	}

	public ArrayList<Product> selectRecommend(SqlSessionTemplate sqlSession, String productNo){
		return (ArrayList)sqlSession.selectList("productMapper.selectRecommend", productNo);
	}
	
	public GroupBuy selectGroupProduct(SqlSessionTemplate sqlSession, String gno) {
		return sqlSession.selectOne("productMapper.selectGroupProduct", gno);
	}

	public ArrayList<HotBuy> selectHotBuyList(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("productMapper.selectHotBuyList");
	}

	public void updateHotBuyStrat(SqlSessionTemplate sqlSession, String formattedNow) {
		sqlSession.update("productMapper.updateHotBuyStart", formattedNow);
	}


	public void updateHotBuyEnd(SqlSessionTemplate sqlSession, String formattedNow) {
		sqlSession.update("productMapper.updateHotBuyEnd", formattedNow);
	}


	public ArrayList<HotBuy> selectHotList(SqlSessionTemplate sqlSession, String categoryL) {
		return (ArrayList)sqlSession.selectList("productMapper.selectHotList", categoryL);
	}


	public ArrayList<HotBuy> selectTimeDeal(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("productMapper.selectTimeDeal");
	}
	
	public ArrayList<GroupEnroll> selectGroupEnrollList(SqlSessionTemplate sqlSession, String gno){
		return (ArrayList)sqlSession.selectList("productMapper.selectGroupEnrollList", gno);
	}
	


	public ArrayList<Cart> mainSelectCart(SqlSessionTemplate sqlSession, long userNo) {
		return (ArrayList)sqlSession.selectList("productMapper.mainSelectCart", userNo);
	}

	
	public int MyPageUpdateCart(SqlSessionTemplate sqlSession, ArrayList<Cart> updateCartList){
		int result = 0;
		
		for(Cart c : updateCartList) {
			result += sqlSession.update("productMapper.MyPageUpdateCart", c);			
		}
		
		return result;
	}


	public int selectPointYJ(SqlSessionTemplate sqlSession, long userNo) {
		if(userNo > 1000000) {
			return sqlSession.selectOne("productMapper.zero");
		}else {
			return sqlSession.selectOne("productMapper.selectPointYJ", userNo);
		}
	}
	
	public int insertGroupEnroll(SqlSessionTemplate sqlSession, GroupEnroll e) {
		return sqlSession.insert("productMapper.insertGroupEnroll", e);
	}
	
	public int insertGroupBuyer(SqlSessionTemplate sqlSession, GroupBuyer gb) {
		return sqlSession.insert("productMapper.insertGroupBuyer", gb);
	}
	
	public ArrayList<GroupBuyer> checkGroupEnroll(SqlSessionTemplate sqlSession, String gbuyNo){
		return (ArrayList)sqlSession.selectList("productMapper.checkGroupEnroll", gbuyNo);
	}
	
	public int checkGroupBuyer(SqlSessionTemplate sqlSession, int enrollNo) {
		return sqlSession.selectOne("productMapper.checkGroupBuyer", enrollNo);
	}
	
	public ArrayList<GroupBuyer> selectGroupBuyer(SqlSessionTemplate sqlSession, GroupBuyer gb){
		return (ArrayList)sqlSession.selectList("productMapper.selectGroupBuyer", gb);
	}
	
	public int paymentInsertOrder(SqlSessionTemplate sqlSession, Orders o) {
		return sqlSession.insert("productMapper.paymentInsertOrder", o);
	}
	
	public int paymentInsertOrderDetail(SqlSessionTemplate sqlSession, Orders o) {

	    // 각 필드를 공백으로 분리
		long orderNo = o.getOrderNo();
	    String[] productNoArray = o.getProductNo().split(" ");
	    String[] optionNameArray = o.getOptionName().split(" ");
	    String[] volumeArray = o.getVolume().split(" ");
	    
	    int result = 0;
	    
	    for (int i = 0; i < productNoArray.length; i++) {

	        Orders newOrder = new Orders();
	        newOrder.setOrderNo(orderNo); 
	        newOrder.setProductNo(productNoArray[i]);
	        newOrder.setOptionName(optionNameArray[i]);
	        newOrder.setVolume(volumeArray[i]);

	       int resultAdd =  sqlSession.insert("productMapper.paymentInsertOrderDetail", newOrder);
	       
	       if (resultAdd > 0) {
	    	   result++;
	        }
	    }
	    return result;
	}

	public int paymentUpdateStock(SqlSessionTemplate sqlSession, Orders o) {
		Options op = new Options();
		
		String[] optionName = o.getOptionName().split(" ");
		String[] volumeStr = o.getVolume().split(" "); // 문자열을 공백으로 분리하여 배열 생성
		String[] productNo = o.getProductNo().split(" ");
		
		int result = 0;
		
		for(int i=0; i<optionName.length; i++) {
			int volume = Integer.parseInt(volumeStr[i]);
			op.setProductNo(productNo[i]);
			op.setStock(volume);
			op.setOptionName(optionName[i]);
			int updateResult = sqlSession.update("productMapper.paymentUpdateStock", op);
			System.out.println("stock 아아아아아아앙 " + volume);
			System.out.println("productNo 아아아아아아앙 " + productNo);
			if(updateResult > 0) {
				result ++;
			}
		}
		System.out.println("재고 바뀌는거 몇개임? " + result);
		
		if(result > 0) {
			return result;
		}else {
			return 0;
		}
	}


	public int paymentDeleteCart(SqlSessionTemplate sqlSession, Orders o) {
		long userNo = o.getUserNo();
		
		int result = 0;
		
		if(userNo < 1000) {
			
			//회원이 결제시 카트 삭제
			int deleteCart = sqlSession.delete("productMapper.paymentDeleteCart", o);
			
			if(deleteCart > 0) {
				result++;
			}
		}else {
			// 비회원 결제시 카트 삭제
			int deleteCart = sqlSession.delete("productMapper.paymentDeleteCart2", o);
			
			if(deleteCart > 0) {
				result++;
			}
		}
		
		return result;
	}
	
	
	
	
	


	public ArrayList<Cart> selectNoMemberCart(SqlSessionTemplate sqlSession, long userNo) {
		return (ArrayList)sqlSession.selectList("productMapper.selectMyPageCart", userNo);
	}
	
	public int insertReview(SqlSessionTemplate sqlSession, Review r) {
		return sqlSession.insert("productMapper.insertReview", r);
	}


	public int myReview(SqlSessionTemplate sqlSession, Order od) {
		System.out.println("========== 여기는 DAO ===========");
		System.out.println(od.getUserNo());
		System.out.println(od.getOrderNo());
		System.out.println(od.getProductNo());
		System.out.println(od.getOptionName());
		System.out.println("========== 여기는 DAO ===========");
		return sqlSession.selectOne("productMapper.checkMyReview", od);
	}


//	public int myReview(SqlSessionTemplate sqlSession, Review re) {
//		System.out.println("========DAO========");
//		System.out.println(re.getUserNo());
//		System.out.println(re.getOrderNo());
//		System.out.println(re.getProductNo());
//		System.out.println(re.getOptionName());
//		System.out.println(sqlSession.selectOne("productMapper.checkMyReview", re));
//		return sqlSession.selectOne("productMapper.checkMyReview", re);
//	}
}
