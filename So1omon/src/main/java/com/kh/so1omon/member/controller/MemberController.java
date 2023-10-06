package com.kh.so1omon.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.so1omon.member.model.service.MemberServiceImpl;
import com.kh.so1omon.member.model.vo.Member;

@Controller
public class MemberController {

	@Autowired 
	private MemberServiceImpl mService;
	
	@RequestMapping("login.me")
	public String loginMember(Member m, Model model, HttpSession session) {
		
		Member loginMember = mService.loginMember(m);
		
		if(loginMember == null) { 
			model.addAttribute("errorMsg", "로그인 실패");
			return "common/errorPage";
			
		}else { 
			session.setAttribute("alertMsg", "성공");
			session.setAttribute("loginMember", loginMember);
			
			return "redirect:/";
		}
	}
	
	
}
