package com.kh.so1omon.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.so1omon.product.model.service.ProductServiceImp;

@Controller
public class AdminController {

	private ProductServiceImp pService;
	
	@RequestMapping("main.admin")
	public String adminHome() {
		return "admin/mainHome";
	}
	
	@RequestMapping("productListView.admin")
	public String productListView() {
		return "admin/productList";
	}
	
	@RequestMapping("productEnrollForm.admin")
	public String productRegisterForm() {
		return "admin/productEnrollForm";
	}
	
	
	
}
