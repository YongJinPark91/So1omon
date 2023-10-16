package com.kh.so1omon.product.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.so1omon.product.model.service.ProductServiceImp;
import com.kh.so1omon.product.model.vo.Product;

@Controller
public class ProductController {
	
	@Autowired
	private ProductServiceImp pService;
	
	@RequestMapping("search.bo1")
	public ArrayList<Product> searchProduct(String keyword){
		ArrayList<Product> plist = pService.searchProduct(keyword);
		System.out.println(plist+"여기는pro");
		return plist;
	}
}
