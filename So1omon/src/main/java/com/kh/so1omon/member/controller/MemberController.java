package com.kh.so1omon.member.controller;


import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Map;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.so1omon.board.model.service.BoardServiceImp;
import com.kh.so1omon.board.model.vo.Board;
import com.kh.so1omon.board.model.vo.TBoard;
import com.kh.so1omon.common.model.service.CommonServiceImpl;
import com.kh.so1omon.common.model.vo.Attachment;
import com.kh.so1omon.common.model.vo.PageInfo;
import com.kh.so1omon.common.template.Pagination;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.kh.so1omon.board.model.service.BoardServiceImp;
import com.kh.so1omon.board.model.vo.Board;
import com.kh.so1omon.board.model.vo.Reply;
import com.kh.so1omon.member.model.service.MemberServiceImpl;
import com.kh.so1omon.member.model.vo.Member;
import com.kh.so1omon.product.model.service.ProductServiceImp;
import com.kh.so1omon.product.model.vo.Cart;
import com.kh.so1omon.product.model.vo.Options;
import com.kh.so1omon.product.model.vo.Order;
import com.kh.so1omon.product.model.vo.Product;
import com.kh.so1omon.product.model.vo.Review;
import com.kh.so1omon.product.model.vo.Wish;
import com.kh.so1omon.qna.model.service.AnswerServiceImp;
import com.kh.so1omon.qna.model.service.QuestionServiceImp;
import com.kh.so1omon.qna.model.vo.Question;
import com.kh.so1omon.product.model.vo.Review;


@Controller
public class MemberController {
	
	@Autowired 
	private MemberServiceImpl mService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	


	@Inject
	private BoardServiceImp bService;
	
	@Inject
	private CommonServiceImpl cService;
	
	@Inject
	private ProductServiceImp pService;
	
	@Inject
	private AnswerServiceImp aService;
	
	@Inject
	private QuestionServiceImp qService;
	


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
		System.out.println("getToken: "+m.getToken());
		String encPwd = bcryptPasswordEncoder.encode(m.getUserPwd());
		m.setUserPwd(encPwd);
		int result = mService.insertMember(m); // 회원가입
		
		if(result > 0) {
			int wishList = mService.insertWishList(m);
			int deleteWish = mService.deleteWish(m);
			int cartList = mService.updateCartList(m); 
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
			session.setAttribute("loginMsg", "로그인메시지");
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
	 * @yj(10.17) jw(10.19)
	 * @header -> 마이페이지(나의정보관리)로 이동, jw(마이페이지 정보 조회 추가)
	 */
	@RequestMapping("myPage.me")
	public String myPage(@RequestParam(value="cpage", defaultValue = "1") int currentPage, long mno, String tabName, Model model) {
		// 페이징바
		int orderListCount = pService.selectOrderListCount(mno);
		int wishListCount = pService.selectWishListCount(mno);
		PageInfo opi = Pagination.getPageInfo(orderListCount, currentPage, 10, 5);
		PageInfo wpi = Pagination.getPageInfo(wishListCount, currentPage, 10, 5);
		// 나의 자유게시글 리스트
		ArrayList<Board> mpBoard = bService.selectMyPageBoardList(mno);
		// 나의 중고게시글 리스트
		ArrayList<TBoard> mpTBoard = bService.selectMyPageTBoardList(mno);
		// 주문내역 리스트
		ArrayList<Order> mpOrderList = pService.selectMyPageOrderList(mno, opi);
		// 내가 관심있는 게시글 리스트
		ArrayList<Board> mpLikeList = bService.selectMyPageLikeList(mno);
		// 나의 문의내역 리스트
		ArrayList<Question> mpQList = qService.selectMyPageQuestionList(mno);
		// 내가 쓴 댓글 리스트
		ArrayList<Board> mpReply = bService.selectMyPageReplyList(mno);
		// 내가 쓴 리뷰 리스트
		ArrayList<Review> mpReView = pService.selectMyPageReviewList(mno);
		// 찜목록 리스트
		ArrayList<Wish> mpWish = pService.selectMyPageWishList(mno, wpi);
		// 장바구니 리스트..
		ArrayList<Cart> mpCart = pService.selectMyPageCart(mno);
		
		

		ArrayList<Order> reviewChecker = pService.myReview(mpOrderList, mno);
		//System.out.println("========진짜 끝이다.===========");
		//System.out.println(reviewChecker);
		//System.out.println(mpOrderList.get(0).getUserNo());
		//System.out.println(mno);
		//System.out.println("========진짜 끝이다.===========");
		/*
		for(int i = 0; i<mpOrderList.size(); i++) {
			mpOrderList.get(i).setUserNo(mno);
			System.out.println(mpOrderList.get(i));
		}
		*/
		
		model.addAttribute("reviewChecker",reviewChecker);
		model.addAttribute("wpi", wpi);
		model.addAttribute("opi", opi);
		model.addAttribute("mpBoard", mpBoard);
		model.addAttribute("mpTBoard", mpTBoard);
		model.addAttribute("mpOrderList", mpOrderList);
		model.addAttribute("mpLikeList", mpLikeList);
		model.addAttribute("mpQList", mpQList);
		model.addAttribute("mpReply", mpReply);
		model.addAttribute("mpReView", mpReView);
		model.addAttribute("mpWish", mpWish);
		model.addAttribute("mpCart", mpCart);
		
		if(tabName.equals("myPage")) {
			model.addAttribute("gubunAccount", "account");
		}else if(tabName.equals("orders")){
			model.addAttribute("gubunOrders", "orders");
		}else if(tabName.equals("myWish")) {
			model.addAttribute("gubunWish", "wish");
		}else if(tabName.equals("myCart")){
			model.addAttribute("gubunCart", "cart");
		}else if(tabName.equals("myBoard")) {
			model.addAttribute("gubunMyBoard", "Board");
		}
		
		return "member/myPage";
	}
	
	/**
	 * @jw(10.23)
	 * @header -> 마이페이지(구매내역) 페이징바 세팅 후 이동
	 */
	@RequestMapping("myPageOrder.me")
	public String myPageOrder(Model model) {
		model.addAttribute("gubunOrders", "orders");
		return "member/myPage";
	}
	
	// 현재 넘어온 첨부파일 그 자체를 서버의 폴더에 저장시키는 역할
		public String saveFile(MultipartFile upfile, HttpSession session) {
			// 파일명 수정 작업 후 서버에 업로드 시키기("flower.png" => "202310041234143.png")

			String originName = upfile.getOriginalFilename(); // 원본파일명 저장"flower.png"
			
			// "202310041546239123.png" (년월일시분초)
			String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()); // "20231004154708"
			int ranNum = (int)(Math.random() * 90000 + 10000); // 랜덤 5자리 63542
			String ext = originName.substring(originName.lastIndexOf(".")); // 마지막"."이 찍힌 이후의 문자열을 추출함 [.png]
			
			String changeName = currentTime + ranNum + ext; // 2023100412341431245.png
			
			// 업로드 시키고자 하는 폴더의 물리적인 경로를 알아내기
			String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");
			
			try {
				upfile.transferTo(new File(savePath + changeName));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			return changeName;
		}
	
	/**
	 * @jw(10.19)
	 * @header -> 회원정보변경
	 */
	@RequestMapping("update.me")
	public String updateMember(Member m, String profile, MultipartFile reupfile, HttpSession session) {
		System.out.println("원래 업로드되어있던 사진" + m.getProfile());
		
		System.out.println("멤버 리업파일이다  " + reupfile);
		
		if(!reupfile.isEmpty()) {
    		m.setProfile("resources/uploadFiles/" + saveFile(reupfile, session));
    	}else {
    		m.setProfile(profile);
    	}
    	System.out.println("사진 받아온 m " + m);
		int result = mService.updateMember(m);
		
		if(result > 0) {
			session.setAttribute("loginMember", mService.loginMember(m));
			session.setAttribute("alertMsg", "성공적으로 회원정보가 변경되었습니다.");
			
			return "redirect:myPage.me?mno=" + m.getUserNo() + "&tabName=myPage";
			
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
	@RequestMapping("emailCheck.me")
	public String emailCheck(String checkEmail) {
		int count = mService.emailCheck(checkEmail);
		return count > 0 ? "NNNNN" : "NNNNY";
	}
	


	

	/**
	 * @jw(10.19)
	 * @header -> 회원정보변경
	 */
	@RequestMapping("updatePwd.me")
	public ModelAndView updatePwd(Member m, ModelAndView mv, HttpSession session, String newPwd, String currentPwd) {
		//System.out.println("비번변경 변경할 비번 " + newPwd);
		//System.out.println("비번변경 loginMember m " + m);
		//System.out.println("비번변경 현재 비번 " + currentPwd);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("newPwd", newPwd);
		map.put("m", m.getUserNo());

		
		if(m.getUserPwd() != null && bcryptPasswordEncoder.matches(currentPwd, m.getUserPwd())) {
			
			map.put("newPwd", bcryptPasswordEncoder.encode((String)map.get("newPwd")));
			int result = mService.updatePwd(map);
			// 로그인 성공 => loginMember를 sessionScope에 담고 메인페이지 url 재요청
			//session.setAttribute("loginMember", loginMember);
			// 메인보내줌
			//System.out.println(result);
			if(result > 0) {
				mv.addObject("alertMsg", "비밀번호를 성공적으로 변경했습니다.");
				mv.setViewName("member/myPage");
			}
		}else {
			// 로그인 실패 => requestScope에 담아서 에러페이지(WEB-INf/views/common/errorPage.jsp)로 포워딩
			mv.addObject("errorMsg", "비밀번호 변경 실패");
			mv.setViewName("common/errorPage");
			
		}
		
		return mv;
		
	}
	

	@ResponseBody
	@RequestMapping(value="selectMemberList.admin", produces="application/json; charset=utf-8")
	public String selectMemberListAD(int num, int limit, String keyword) {
		ArrayList<Member> mList = mService.selectMemberListAD(num, limit, keyword);
		
		return new Gson().toJson(mList);
	}
	


	
	/**
	 * @sy(10.20)
	 * @header -> 마이페이지(주문내역)로 이동
	 */
	@RequestMapping("myOrder.me")
	public String myOrder(Model model) {
		model.addAttribute("gubunOrder", "order");
		return "member/myPage";
	}


	@RequestMapping("selectMember.admin")
    public String selectMemberAD(long userNo, Model model) {
      Member m = mService.selectMemberAD(userNo);
      ArrayList<Board> bList = bService.selectAllBoardListAD(userNo);
      ArrayList<Reply> rList = bService.selectReplyListAD(userNo);
      ArrayList<Review> rvList = pService.selectReviewListAD(userNo);
      ArrayList<Order> oList = cService.selectOrderListAD(userNo);
      
      model.addAttribute("m", m);
      model.addAttribute("bList", bList);
      model.addAttribute("rList", rList);
      model.addAttribute("rvList", rvList);
      model.addAttribute("oList", oList);
      
      return "admin/memberDetailView";
      
    }
	
	@RequestMapping("sendMessage.admin")
	public String sendMessageView(long userNo, Model model) {
		Member m = mService.selectMemberAD(userNo);
		model.addAttribute("m", m);
		return "admin/sendMessageView";
	}


	@RequestMapping("deleteMember.me")
	public String deleteMember(long userNo, String userPwd, String deleteUserPwd, HttpSession session, ModelAndView mv) {
		
		if(userPwd != null && bcryptPasswordEncoder.matches(deleteUserPwd, userPwd)) {
			int result = mService.deleteMember(userNo);
			
			if(result > 0) {
				session.setAttribute("alertMsg", "회원탈퇴에 성공했습니다. 이용해주셔서 감사합니다.");
				session.invalidate();
				return "redirect:/";
			}else {
				session.setAttribute("alertMsg", "회원탈퇴에 실패했습니다. 다시 시도해주세요");
				return "redirect:/";
			}
		}else {
			// * 로그인 실패
			mv.addObject("alertMsg", "비밀번호가 틀렸습니다. 다시 시도해주세요");
			session.setAttribute("alertMsg", "비밀번호가 틀렸습니다. 다시 시도해주세요");
			return "redirect:/";
		}
	}
	
	
	/**
	 * @yj(10.25)
	 * @카카오로그인
	 */
	@RequestMapping(value = "/kakaoLogin", produces = "application/json; charset=utf-8")
	public String kakaoLogin(@RequestParam String code, HttpSession session, Model model) throws IOException {
		//code 잘넘어오는지 확인용
		//System.out.println(code);
		
		// 사용자에게 정보제공 동의 후 받은 코드에 대해서 활용하는 부분
		String tokenResponse = mService.getAccessToken(code);
		
		//access_token 들어있는 덩어리 확인용
		//System.out.println(tokenResponse);
		
		ObjectMapper objectMapper = new ObjectMapper();
        JsonNode rootNode = objectMapper.readTree(tokenResponse);
        String accessToken = rootNode.get("access_token").asText();
        //엑세스 토큰 테스트
        //System.out.println("Access Token: " + accessToken);
        
        //액세스 토큰을 가지고 데이터와 연결해서 데이터를 뽑아서 없는 데이터는 회원가입, 있는데이터면 바로 로그인
        Member loginMember = mService.getUserInfo(accessToken);
        System.out.println("여기서 null 찍히면 바로 분기처리해서 쏜다."+loginMember);
        if(loginMember.getUserId() == null) {
        	model.addAttribute("errorMsg", "카카오톡 연동에 실패하였습니다.(이메일 연동실패)");
        	return "common/errorPage";
        }else {
        	session.setAttribute("loginMember", loginMember);
        	return "redirect:/";
        }
	}
	
	@RequestMapping("updateMember.admin")
	public String updateMemberAD(Member m, MultipartFile mFile, HttpSession session) {
		
		System.out.println(m);
		
		if(!mFile.getOriginalFilename().equals("")) {
			m.setProfile("resources/uploadFiles/" + saveFile(mFile, session));
		}
		
		int result = mService.updateMemberAD(m);
		
		if(result > 0) {
			return "redirect:/selectMember.admin?userNo=" + m.getUserNo();
		}else {
			session.setAttribute("alertMsg", "멤버 수정 실패하였습니다. 다시 시도해주세요");
			return "redirect:/selectMember.admin?userNo=" + m.getUserNo();
		}
	}
}

