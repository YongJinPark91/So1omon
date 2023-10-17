package com.kh.so1omon.product.model.service;

import java.util.ArrayList;

import com.kh.so1omon.product.model.vo.Product;

public interface ProductService {

	public ArrayList<Product> searchProduct(String keyword);
	
	ArrayList<Product> productListAD(int num, int limit);
}
