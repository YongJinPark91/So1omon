package com.kh.so1omon.product.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.so1omon.product.model.service.ProductServiceImp;
import com.kh.so1omon.product.model.vo.Product;

@Controller
public class ProductController {
	
	@Autowired
	private ProductServiceImp pService;
	
	@RequestMapping("search.pr")
	public void searchProduct(String keyword){
		//ArrayList<Product> plist = pService.searchProduct(keyword);
		//System.out.println(plist+"여기는pro1");
		System.out.println(keyword);
		
	}
	
	/**
	 * @yj(10.17)
	 * @header -> 결제창으로 이동
	 */
	@RequestMapping("checkout.pd")
	public String checkOut() {
		return "product/productPaymentView";
	}
	
	/**
	 * @mj(10.17)
	 * 관리자페이지 상품조회
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="productList.admin", produces="application/json; charset=utf-8")
	public String productListAD(int num, int limit) {
//		System.out.println(num);
//		System.out.println(limit);
		
		ArrayList<Product> list = pService.productListAD(num, limit);
		
		return new Gson().toJson(list);
	}
}
