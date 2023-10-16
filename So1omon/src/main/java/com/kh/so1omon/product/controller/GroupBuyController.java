package com.kh.so1omon.product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.so1omon.product.model.service.GroupBuyServiceImp;
import com.kh.so1omon.product.model.service.GroupBuyerServiceImp;

@Controller
public class GroupBuyController {
	@Autowired
	private GroupBuyServiceImp gbService;
}
