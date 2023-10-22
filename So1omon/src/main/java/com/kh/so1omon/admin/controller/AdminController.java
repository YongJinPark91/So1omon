package com.kh.so1omon.admin.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.so1omon.common.model.vo.Attachment;
import com.kh.so1omon.product.model.service.ProductServiceImp;
import com.kh.so1omon.product.model.vo.Product;

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
	
	@RequestMapping("memberListView.admin")
	public String memberListView() {
		return "admin/memberListView";
	}

	@RequestMapping("orderListView.admin")
	public String orderListView() {
		return "admin/orderListView";
	}
}
