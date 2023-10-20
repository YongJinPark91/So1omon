package com.kh.so1omon.member.controller;


import java.io.File;
import java.io.IOException;
import java.util.Map;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
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
	
	@RequestMapping("signUp.me")
	public String signUp() {
		return "member/signUp";
	}
	
	// 신고 모달 띄우는 컨트롤러
	@RequestMapping("report.me")
	public String reportMember() {
		return "member/report.me";
	}
	
	@RequestMapping("signUpReal.me")
	public String signUpReal() {
		return "member/memberEnrollForm";
	}
	
	@RequestMapping("insert.me")
	public String insertMember(Member m, HttpSession session, Model model) {
		String encPwd = bcryptPasswordEncoder.encode(m.getUserPwd());
		m.setUserPwd(encPwd);
		int result = mService.insertMember(m); // 회원가입
		
		if(result > 0) {
			return "member/enrollSuccess";
		}else {
			model.addAttribute("errorMsg", "회원가입실패");
			return "common/errorPage";
		}
	}
	
	@RequestMapping("login.me")
	public ModelAndView loginMember(Member m, HttpSession session, ModelAndView mv) {
		Member loginMember = mService.loginMember(m);
		if(loginMember != null && bcryptPasswordEncoder.matches(m.getUserPwd(), loginMember.getUserPwd())) {
			session.setAttribute("loginMember", loginMember);
			mv.setViewName("redirect:/");
		}else {
			// * 로그인 실패
			mv.addObject("errorMsg","로그인에 실패하였습니다.");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	@RequestMapping("logout.me")
	public String logoutMember(HttpSession session) {
		session.invalidate();
		//로그아웃을 하면 메인화면으로 돌아가야 한다.
		return "redirect:/";
	}
	
	/**
	 * @yj(10.17)
	 * @header -> 마이페이지(나의정보관리)로 이동
	 */
	@RequestMapping("myPage.me")
	public String myPage() {
		return "member/myPage";
	}
	
	/**
	 * @yj(10.17)
	 * @header -> 마이페이지(찜목록)로 이동
	 */
	@RequestMapping("wishList.me")
	public String wishList(Model model) {
		model.addAttribute("gubunWish", "wish");
		return "member/myPage";
	}
	
	/**
	 * @yj(10.17)
	 * @header -> 마이페이지(장바구니)로 이동
	 */
	@RequestMapping("myCart.me")
	public String myCart(Model model) {
		model.addAttribute("gubunCart", "cart");
		return "member/myPage";
	}
	
	/**
	 * @jw(10.19)
	 * @header -> 회원정보변경
	 */
	@RequestMapping("update.me")
	public String updateMember(@ModelAttribute Member m,MultipartFile reupfile, HttpSession session) {
		System.out.println("원래 업로드되어있던 사진" + m.getProfile());
		if(m.getProfile().isEmpty()) {
			
			m.setProfile("resources/productFiles/" + m.getProfile());
			System.out.println("원래 사진 없었을때" + m.getProfile());
		}else {
			
			m.setProfile("resources/productFiles/" + m.getProfile());
			System.out.println("원래 사진 있었을때" + m.getProfile());
		}
		
		int result = mService.updateMember(m);
		
		if(result > 0) {
			session.setAttribute("loginMember", mService.loginMember(m));
			session.setAttribute("alertMsg", "성공적으로 회원정보가 변경되었습니다.");
			
			return "member/myPage";
			
		}else {
			session.setAttribute("alertMsg", "회원정보 변경에 실패했습니다.");
			return "member/myPage";
		}
		
	}
	
	
	
	/**
	 * @yj(10.18)
	 * @아이디찾기-1(휴대폰번호로 찾기)
	 */
	@RequestMapping("findIdUsePhone.yj")
	public String findIdUsePhone(Member m, HttpSession session,Model model) {
		Member findId = mService.findIdUsePhone(m);
		if(findId != null) {
			session.setAttribute("findId", findId);
			return "member/findPwd";
		}else {
			model.addAttribute("errorMsg","가입한 회원이 없습니다. 다시 확인바랍니다.");
			System.out.println("값이 없을때");
			return "common/errorPage";
		}
	}
	
	/**
	 * @yj(10.18)
	 * @아이디찾기-2(email번호로 찾기)
	 */
	@RequestMapping("findIdUseEmail.yj")
	public String findIdUseEmail(Member m, HttpSession session,Model model) {
		Member findId = mService.findIdUseEmail(m);
		if(findId != null) {
			session.setAttribute("findId", findId);
			return "member/findPwd";
		}else {
			model.addAttribute("errorMsg","가입한 회원이 없습니다. 다시 확인바랍니다.");
			return "common/errorPage";
		}
	}
	
	@RequestMapping("changePwd.yj")
	public String findIdChangePwd(Member m, HttpSession session) {
		System.out.println("여기는 controller " +m);
		String encPwd = bcryptPasswordEncoder.encode(m.getUserPwd());
		m.setUserPwd(encPwd);
		int result = mService.findIdChangePwd(m);
		if(result > 0) {
			session.setAttribute("alertMsg", "비밀번호 변경에 성공하였습니다.");
			return "redirect:/";
		}else {
			session.setAttribute("alertMsg", "비밀번호 변경에 실패하였습니다.");
			return "redirect:/";
		}
	}
	
	@ResponseBody
	@RequestMapping("idCheck.me")
	public String idCheck(String checkId) {
		int count = mService.idCheck(checkId);
		return count > 0 ? "NNNNN" : "NNNNY"; 
	}
	

	@ResponseBody
	@RequestMapping("showMyWish.yj")
	public int showMyWish(int userNo) {
		int result = mService.showMyWish(userNo);
		return result; 
	}
	

	/**
	 * @jw(10.19)
	 * @header -> 회원정보변경
	 */
	@RequestMapping("updatePwd.me")
	public ModelAndView updatePwd(Member m, ModelAndView mv, HttpSession session, String newPwd) {
		System.out.println("비번변경 변경할 비번 " + newPwd);
		System.out.println("비번변경 loginMember m " + m);
		
		if(m.getUserPwd() != null && bcryptPasswordEncoder.matches(m.getUserPwd(), newPwd)) {
			int result = mService.updatePwd(m, newPwd);
			// 로그인 성공 => loginMember를 sessionScope에 담고 메인페이지 url 재요청
			//session.setAttribute("loginMember", loginMember);
			// 메인보내줌
			mv.setViewName("redirect:/");
		}else {
			// 로그인 실패 => requestScope에 담아서 에러페이지(WEB-INf/views/common/errorPage.jsp)로 포워딩
			mv.addObject("errorMsg", "로그인실패");
			mv.setViewName("common/errorPage");
			
		}
		
		return mv;
		
	}
	

	@ResponseBody
	@RequestMapping(value="selectMemberList.admin", produces="application/json; charset=utf-8")
	public String selectMemberListAD(int num, int limit) {
		ArrayList<Member> mList = mService.selectMemberListAD(num, limit);
		
		return new Gson().toJson(mList);
	}
	
	@RequestMapping("selectMember.admin")
	public String selectMemberAD(int userNo, Model model) {
		
		Member m = mService.selectMemberAD(userNo);
		
		model.addAttribute("m", m);
		
		return "admin/memberDetailView";
		
	}
	
}
