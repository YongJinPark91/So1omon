package com.kh.so1omon.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.so1omon.member.model.service.MemberServiceImpl;
import com.kh.so1omon.member.model.vo.Member;

@Controller
public class MemberController {

	@Autowired 
	private MemberServiceImpl mService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@RequestMapping("findId.me")
	public String findId() {
		return "common/findID";
	}
	
	
}
