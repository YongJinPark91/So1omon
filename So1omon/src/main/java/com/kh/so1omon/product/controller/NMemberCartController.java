package com.kh.so1omon.product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.so1omon.product.model.service.NMemberCartServiceImp;

@Controller
public class NMemberCartController {
	@Autowired
	private NMemberCartServiceImp nmService;
}
