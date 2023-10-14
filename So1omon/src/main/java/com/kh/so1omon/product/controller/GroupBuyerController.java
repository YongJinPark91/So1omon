package com.kh.so1omon.product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.so1omon.product.model.service.GroupBuyerServiceImp;

@Controller
public class GroupBuyerController {
	@Autowired
	private GroupBuyerServiceImp gbService;
}
