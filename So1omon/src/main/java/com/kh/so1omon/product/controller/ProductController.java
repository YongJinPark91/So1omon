package com.kh.so1omon.product.controller;

import java.io.BufferedReader;


import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Spliterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.kh.so1omon.common.model.service.CommonServiceImpl;
import com.kh.so1omon.common.model.vo.Attachment;
import com.kh.so1omon.product.model.dao.ProductDao;
import com.kh.so1omon.member.model.vo.Member;
import com.kh.so1omon.product.model.service.ProductServiceImp;
import com.kh.so1omon.product.model.vo.Cart;
import com.kh.so1omon.product.model.vo.Category;
import com.kh.so1omon.product.model.vo.GroupBuy;
import com.kh.so1omon.product.model.vo.Options;
import com.kh.so1omon.product.model.vo.Product;
import com.kh.so1omon.product.model.vo.SelectVo;
import com.kh.so1omon.product.model.vo.Review;
import com.kh.so1omon.product.model.vo.Wish;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

@Controller
public class ProductController {
	
	private static long userNo = 0;
	
	private IamportClient api;
	
	public ProductController() {
    	// REST API 키와 REST API secret 를 아래처럼 순서대로 입력한다.
		this.api = new IamportClient("6717836160421464","UoSm773MKZnFLe1ARwsftGohKZ82CNt1FkWgkbxbanfkOZciqWsjNRqfDVjGuPNbWD5wsSCUFiUzrWs0");
	}
	
	
	@Autowired
	private ProductServiceImp pService;
	@Autowired
	private CommonServiceImpl cservice;
	
	
	@ResponseBody
	@RequestMapping("staticUserNo.yj")
	public long checkUserNo(long userKey) {
		this.userNo = userKey;
		return userNo;
			
	}
	
	/**
	 * @yj(10.17)
	 * @header -> 결제창으로 이동
	 */
	@RequestMapping("checkout.pd")
	public String checkOut() {
		return "product/productPaymentView";
	}
	
	
	/**
	 * @mj(10.17)
	 * @headerAdmin -> ajax 상품조회
	 */
	@ResponseBody
	@RequestMapping(value="productList.admin", produces="application/json; charset=utf-8")
	public String productListAD(int num, int limit) {
		
		pService.productListAD(num, limit);
		
		ArrayList<Product> list = pService.productListAD(num, limit);
		
		return new Gson().toJson(list);
	}
	
	/**
	 * @yj(10.17)
	 * 메인페이지 인기상품조회
	 */
	@ResponseBody
	@RequestMapping(value = "topProductList.yj", produces = "application/json; charset=utf-8")
	public String ajaxSelectTopList() {
		ArrayList<Product> list = pService.selectTopList();
		
		return new Gson().toJson(list);
	}
	
	/**
	 * @mj
	 * @param productNo 상품번호
	 * @adminPage 상품조회 -> 상품상세 이동
	 */
	@RequestMapping("productDetail.admin")
	public String productDetailAD(String productNo, Model model) {
		
		Product p = pService.productDetailAD(productNo);
		ArrayList<Attachment> atList = pService.productDetailImgAD(productNo);
		ArrayList<Options> optList = pService.productOptionsAD(productNo);
		
		model.addAttribute("p", p);
		model.addAttribute("atList", atList);
		model.addAttribute("optList", optList);
		
		return "admin/productDetailView";
		
	}
	
	/**
	 * @mj
	 * @adminPage 상품등록 -> 대분류 카테고리 조회
	 */
	@ResponseBody
	@RequestMapping(value="selectCategoryL.admin", produces="application/json; charset=utf-8")
	public String selectCategoryAD() {
		
		ArrayList<Category> list = pService.selectCategoryAD();
		return new Gson().toJson(list);
	}
	
	/**
	 * @param categoryL 대분류명
	 * @adminPage 상품등록 -> 소분류 카테고리 조회
	 */
	@ResponseBody
	@RequestMapping(value="selectCategoryS.admin", produces="application/json; charset=utf-8")
	public String selectCategorySmallAD(String categoryL) {
		
		ArrayList<Category> list = pService.selectCategorySmallAD(categoryL);
		return new Gson().toJson(list);
		
	}
	
	@RequestMapping("insertProduct.admin")
	public String insertProductAD(Product p, MultipartFile thumbnailFile, MultipartFile[] detailFiles, HttpSession session, HttpServletRequest request) {
		
		ArrayList<Attachment> atList = new ArrayList<Attachment>();
		Attachment at = null;

		ArrayList<Options> optList = new ArrayList<Options>();
		Options opt = null;
		
		p.setThumbnail("resources/productFiles/" + saveProductFile(thumbnailFile, session));
		
		int result = pService.insertProductAD(p);
		
		int atResult = 0;
		int optResult = 0;
		
		if(result > 0) {
			for(MultipartFile f : detailFiles) {
				if(!f.getOriginalFilename().equals("")) {
					at = new Attachment();
					at.setOriginName(f.getOriginalFilename());
					at.setChangeName(saveProductFile(f, session));
					at.setFilePath("resources/productFiles/" + at.getChangeName());
					atList.add(at);
				}
				
				
			}
			
			int num = Integer.parseInt(request.getParameter("optNum")); 
			for(int i=0; i <= num; i++) {
				if(!request.getParameter("optionName"+i).equals("")) {
					opt = new Options();
					opt.setOptionName(request.getParameter("optionName"+i));
					opt.setStock(Integer.parseInt(request.getParameter("stock"+i)));
					opt.setPrice(Integer.parseInt(request.getParameter("optPrice"+i)));
					
					optList.add(opt);
				}
			}
			
			System.out.println(optList);
			
			atResult = pService.insertProductImgAD(atList);
			optResult = pService.insertOptionsAD(optList); 
		}
		
		if(atResult > 0 && result > 0 && optResult > 0) {
			session.setAttribute("alertMsg", "상품 등록 성공!");
		}else {
			session.setAttribute("alertMsg", "상품 등록 실패..");
		}
		
		return "redirect:productEnrollForm.admin";

		
		
	}
	
	public String saveProductFile(MultipartFile f, HttpSession session) {
		
		String originName = f.getOriginalFilename();
		
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		int ranNum = (int)(Math.random() * 90000 + 10000);
		String ext = originName.substring(originName.lastIndexOf("."));
		
		String changeName = currentTime + ranNum + ext;
		
		String savePath = session.getServletContext().getRealPath("/resources/productFiles/");
		
		try {
			f.transferTo(new File(savePath + changeName));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return changeName;
	}
	
	@RequestMapping("productUpdateForm.admin")
	public String productUpdateForm(String productNo, Model model) {
		Product p = pService.productDetailAD(productNo);
		ArrayList<Attachment> atList = pService.productDetailImgAD(productNo);
		
		model.addAttribute("p", p);
		model.addAttribute("categoryL", p.getCategory().substring(0, p.getCategory().indexOf("-")));
		model.addAttribute("categoryS", p.getCategory().substring(p.getCategory().indexOf("-")));
		model.addAttribute("atList", atList);
		
		return "admin/productUpdateForm";
	}
	
	/**
	 * @yj(10.19)
	 * @로그인 후 헤더의 장바구니 정보조회
	 */
	@ResponseBody
	@RequestMapping(value="showMyCart.yj", produces = "application/json; charset=utf-8")
	public String selectShowMyCart() {
		ArrayList<Product> list = pService.selectShowMyCart(userNo);
		return new Gson().toJson(list);
	}
	
	@ResponseBody
	@RequestMapping("showMyWish.yj")
	public int showMyWish() {
		int result = pService.showMyWish(userNo);
		return result; 
	}
	
	/**
	 * @yj(10.19)
	 * @로그인 후 헤더의 장바구니 리스트 삭제
	 */
	@ResponseBody
	@RequestMapping(value = "removeCart.yj", produces = "application/json; charset=utf-8")
	public int removeCart(Cart c) {
		int result = pService.removeCart(c);
		return result;
	}
	
	/**
	 * @jw(10.30)
	 * @마이페이지 장바구니 삭제
	 */
	@ResponseBody
	@RequestMapping(value = "removeCart.jw", produces = "application/json; charset=utf-8")
	public int removeMyPageCart(Cart c) {
		int result = pService.myPageRemoveCart(c);
		System.out.println("드루와ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ" + c);
		return result;
	}
	
	@RequestMapping("optionsUpdateForm.admin")
	public String optionsUpdateForm(String productNo, Model model) {
		ArrayList<Options> optList = pService.productOptionsAD(productNo);
		
		model.addAttribute("optList", optList);
		return "admin/optionsUpdateForm";
	}
	
	/**
	 * @jw(10.19)
	 * @마이페이지 찜목록 삭제
	 */
	@ResponseBody
	@RequestMapping(value="deleteWish.pr", produces = "application/json; charset=utf-8")
	public int deleteWish(Wish w) {
		int result = pService.deleteWish(w);
		return result;
	}
	
	
	@ResponseBody
	@RequestMapping(value="selectGroupbuyList.admin", produces="application/json; charset=utf-8")
	public String selectGroupBuyListAD(int num, int limit, String type) {
		ArrayList<GroupBuy> gList = pService.selectGroupbuyListAD(num, limit, type);
		return new Gson().toJson(gList);
	}
	
	
	@RequestMapping("gbuyUpdateForm.admin")
	public String gbuyUpdateFormAD(int gbuyNo, Model model) {
		
		GroupBuy g = pService.selectGroupbuyAD(gbuyNo);
		model.addAttribute("g", g);
		
		String sTime = g.getGbuyStart().substring(9);
		String sDay = g.getGbuyStart().substring(0,7);
		
		String eTime = g.getGbuyEnd().substring(9);
		String eDay = g.getGbuyEnd().substring(0,7);
		
		System.out.println(sTime + sDay + "시작");
		System.out.println(eTime + eDay + "끝");
		
		model.addAttribute("sTime", sTime);
		model.addAttribute("sDay", sDay);
		model.addAttribute("eTime", eTime);
		model.addAttribute("eDay", eDay);
		
		return "admin/groupbuyUpdateForm";
	}
	
	@ResponseBody
	@RequestMapping(value="selectProduct.admin", produces="application/json; charset=utf-8")
	public String selectProductAD(int categoryNo) {
		ArrayList<Product> list = pService.selectProduct(categoryNo);
		return new Gson().toJson(list);
	}
	
	@RequestMapping("insertGroupbuy.admin")
	public String insertGroupbuyAD(GroupBuy g, String sTime, String eTime, HttpSession session) {
		
		g.setGbuyStart(g.getGbuyStart() + " " +sTime);
		g.setGbuyEnd(g.getGbuyEnd() + " " + eTime);
		
		int result = pService.insertGroupbuyAD(g);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "성공적으로 상품이 등록되었습니다.");
		}else {
			session.setAttribute("alertMsg", "상품 등록에 실패하였습니다.");
		}
		
		
		return "admin/groupbuyListView";
		
	}
	
	/**
	 * @yj(10.26)
	 * @메인페이지 공동구매 데이터 연동
	 */
	@ResponseBody
	@RequestMapping(value = "groupBuy.yj", produces = "application/json; charset=utf-8")
	public String selectGBuy() {
		ArrayList<GroupBuy> list = pService.selectGBuyList(); 
		return new Gson().toJson(list);
	}
	
	/**
	 * @yj(10.26)
	 * @메인페이지 찜등록
	 */
	@ResponseBody
	@RequestMapping(value = "wishController.yj")
	public String addWish(String productNo) {
			// 로그인 하고 관심리스트에 담을떄
			Wish w = new Wish();
			w.setProductNo(productNo);
			w.setUserNo(userNo);
			System.out.println(userNo);
			
			int selectResult = pService.selectWish(w);
			if(selectResult > 0) {
				pService.deleteWish(w);
				return "1"; 
			}else {
				pService.addWish(w);
				return "0";
			}
	}
	
	/**
	 * @yj(일반상품 조회)
	 * @헤더 -> 메인페이지 리스트
	 */
	@RequestMapping(value = "nomalProduct.yj")
	public String nomalProduct(HttpSession session, Model model) {
		ArrayList<Product> productList = pService.selectProductList();
		if(productList != null) {
			session.setAttribute("productList", productList);
			return "product/normalProductList";
		}else {
			model.addAttribute("errorMsg", "상품 조회에 실패하였습니다.");
			return "common/errorPage";
		}
	}
	
	
	@RequestMapping("productDetail.mj")
	public String normalProductDetail(String pno, Model model, HttpSession session) {
		
		int increaseCount = pService.increseCount(pno);
		int result = 0;
		
		if(increaseCount > 0) {
			Product p = pService.productDetailAD(pno);
			ArrayList<Options> opList = pService.productOptionsAD(pno);
			ArrayList<Review> rList = pService.selectReviewList(pno);
			ArrayList<Attachment> atList = pService.productDetailImgAD(pno);
			ArrayList<Product> cList = pService.selectRecommend(pno);
			HashMap<String, Object> map = new HashMap<String, Object>();
			
			if(session.getAttribute("loginMember") != null) {
				long userNo = ((Member)session.getAttribute("loginMember")).getUserNo();
				map.put("userNo", userNo);
				map.put("productNo", pno);
				
				result = pService.checkReview(map);
				
			}
			
			model.addAttribute("p", p);
			model.addAttribute("opList", opList);
			model.addAttribute("rList", rList);
			model.addAttribute("atList", atList);
			model.addAttribute("result", result);
			model.addAttribute("cList", cList);
			
			return "product/normalProductDetail";
			
		}else {
			model.addAttribute("errorMsg", "상품 조회에 실패하였습니다.");
			return "common/errorPage";
		}
		
	}
	
	/**
	 * @jw(10.27)
	 * @마이페이지 로딩 완료 후 장바구니 옵션 selectbox 조회
	 */	
	@ResponseBody
	@RequestMapping(value="selectMyPageCartAjax.pr", produces="application/json; charset=utf-8")
	public String selectMyPageCartAjax(long userNo) {
		
		// 장바구니 리스트
		ArrayList<Cart> mpCart = pService.selectMyPageCart(userNo);
		
		return new Gson().toJson(mpCart);
	}
	
	/**
	 * @jw(10.31)
	 * @카카오페이 결제 검증 api
	 */	
	@ResponseBody
	@RequestMapping(value="verifyIamport/{imp_uid}")
	public IamportResponse<Payment> paymentByImpUid(
			Model model
			, Locale locale
			, HttpSession session
			, @PathVariable(value= "imp_uid") String imp_uid) throws IamportResponseException, IOException
	{	
			return api.paymentByImpUid(imp_uid);
	}
	
	@RequestMapping("movePayment.pr")
	public String movePayment(long userNo, Model model) {
		// 장바구니 리스트
		ArrayList<Cart> mpCart = pService.selectMyPageCart(userNo);
		model.addAttribute("mpCart", mpCart);
		
		return "product/productPaymentView";
	}
	
	@ResponseBody
	@RequestMapping("pointUpdate.pr")
	public int paymentAddress(int point, Model model) {
		model.addAttribute(point);
		return point;
	}
		
		
		
	
		

	
	/**
	 * @yj(10.29)
	 * @헤더 네비바 -> 공동구매리스트
	 */
	@RequestMapping(value="groupBuyList.yj")
	public String selectGroupBuyList(HttpSession session, Model model) {
		ArrayList<GroupBuy> groupBuyList = pService.selectGroupBuyList();
		if(groupBuyList != null) {
			session.setAttribute("groupBuyList", groupBuyList);
			return "product/groupBuyList";
		}else {
			model.addAttribute("errorMsg", "상품 조회에 실패하였습니다.");
			return "common/errorPage";
		}
	}
	
	/**
	 * @yj(10.30)
	 * @일반상품 게시판 정렬
	 */
	@ResponseBody
	@RequestMapping(value = "normalList.controller", produces = "application/json; charset=utf-8")
	public String selectNormalController(String keyword) {
		ArrayList<Product> list = pService.selectNormalController(keyword);
		return new Gson().toJson(list);
	}
	
	
	/**
	 * @yj(10.30)
	 * @공구상품 게시판 정렬
	 */
	@ResponseBody
	@RequestMapping(value = "groupBuy.controller", produces = "application/json; charset=utf-8")
	public String grouptBuyController(String keyword) {
		ArrayList<GroupBuy> list = pService.selectGroupController(keyword);
		return new Gson().toJson(list);
	}
	
	
	@ResponseBody
	@RequestMapping("checkWish.mj")
	public int checkWish(Wish w) {
		int result = pService.checkWish(w);
		return result;
	}
	
	
	@ResponseBody
	@RequestMapping(value="addCart.mj", method = RequestMethod.POST)
	public String testMethod(@RequestBody ArrayList<Cart> data, HttpServletResponse response) {
		
		response.setContentType("application/json; charset=utf-8");
		
		long userNo = data.get(0).getUserNo();
		
		// 기존 장바구니 조회
		ArrayList<Cart> list = pService.selectMyPageCart(userNo);
		// 업데이트 할 장바구니
		ArrayList<Cart> uList = new ArrayList<Cart>();
		
		for(Cart c : list) {
			for(int i=0; i < data.size(); i++) {
				if(c.getProductNo().equals(data.get(i).getProductNo()) && c.getOptionName().equals(data.get(i).getOptionName())) {
					uList.add(data.get(i)); // 업데이트 할 uList에 담기
					data.remove(data.get(i)); // insert할 data에서 제거
				}
			}
		}
		
		int result = pService.insertCart(data); 
		int result1 = pService.updateCart(uList);
		
		System.out.println("result 값 : " + result);
		System.out.println("result1 값 : " + result1);
		
		if(result > 0) {
			return "Success";
		}else {
			return "Fail";
		}
		
	}
	
	@RequestMapping("productCompletePaymentView.pr")
	public String productCompletePaymentView(String orderNo, Model model) {
		System.out.println("오더넘버 " + orderNo);
		
		model.addAttribute("orderNo", orderNo);
		return "product/productCompletePaymentView";
	}
	
	@ResponseBody
	@RequestMapping("modifyCart.pr")
	public int modifyCart(String optionName, String productNo, String volume, HttpSession session) {
		ArrayList<Cart> updateCartList = new ArrayList<Cart>();
		String[] optionNames = optionName.split(" ");
		String[] volumes = volume.split(",");
		String[] productNos = productNo.split(" ");
		for(int i=0; i<productNos.length; i++) {
			Cart cart = new Cart();
			cart.setUserNo(userNo);
			cart.setProductNo(productNos[i]);
			cart.setVolume(Integer.parseInt(volumes[i]));
			cart.setOptionName(optionNames[i]);
			updateCartList.add(cart);
		}
		int result = pService.MyPageUpdateCart(updateCartList);
		return result;
	}
	
		
}


























