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
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.kh.so1omon.common.model.service.CommonServiceImpl;
import com.kh.so1omon.common.model.vo.Attachment;
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

@Controller
public class ProductController {
	
	
	private static long userNo = 0;
	
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
//			HashMap<String, Object> map = new HashMap<String, Object>();
//			
//			if(session.getAttribute("loginMember") != null) {
//				int userNo = ((Member)session.getAttribute("loginMember")).getUserNo();
//				map.put("userNo", userNo);
//				map.put("productNo", pno);
//				
//				result = pService.checkReview(map);
//				
//			}
//			model.addAttribute("result", result);
			
			model.addAttribute("p", p);
			model.addAttribute("opList", opList);
			model.addAttribute("rList", rList);
			model.addAttribute("atList", atList);
			model.addAttribute("cList", cList);
			
			return "product/normalProductDetail";
			
		}else {
			model.addAttribute("errorMsg", "상품 조회에 실패하였습니다.");
			return "common/errorPage";
		}
		
	}
	
	@RequestMapping(value="/kakaopay.api", produces = "application/json; charset=utf-8")
	@ResponseBody
	public String kakaopay(@RequestParam("tid") String tid) {
		try {
			URL url = new URL("https://kapi.kakao.com/v1/payment/ready?tid=" + tid);
			HttpURLConnection URLConnection = (HttpURLConnection) url.openConnection();
			URLConnection.setRequestMethod("POST");
			//Authorization 인증
			URLConnection.setRequestProperty("Authorization", "KakaoAK 0e9ba8c30383477a88a744b29e95fe0a");
			URLConnection.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			URLConnection.setDoOutput(true); // 서버를 통해 전해줄 것이 있는지 없는지를 무조건 true로 설정함
			// input은 하는 이유 : 만들면 input은 무조건 true로 됨
			//System.out.println(URLConnection);
			// 파라미터 기본값은 개발자 페이지 밑에 있음
			String parameter = 
					  "cid=TC0ONETIME"
					+ "&partner_order_id=partner_order_id"
					+ "&partner_user_id=partner_user_id"
					+ "&item_name=초코파이"
					+ "&quantity=1"
					+ "&total_amount=2200"
					+ "&vat_amount=200"
					+ "&tax_free_amount=0"
					+ "&approval_url=http://localhost:8888/so1omon/developers.kakao.com/success.kakao"
					+ "&fail_url=http://localhost:8888/so1omon/developers.kakao.com/fail"
					+ "&cancel_url=http://localhost:8888/so1omon/developers.kakao.com/cancel";
			
			// 데이터를 api로 줄수 있게됨
			OutputStream outputStream = URLConnection.getOutputStream(); 
			
			// 데이터를 주는 변수
			DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
			// 바이트형식으로 서버에 전달
			dataOutputStream.writeBytes(parameter);
			
			// 담겨있던 데이터 비우고 닫아줌
			dataOutputStream.flush();
			dataOutputStream.close();
			// System.out.println("dataOutputStream : " + dataOutputStream);
			
			int result = URLConnection.getResponseCode();
			// System.out.println("result : " + result);
			InputStream  inputStream; // 받는애
			
			// http에서 성공은 200, 나머지는 다 에러
			if(result == 200) {
				inputStream = URLConnection.getInputStream();
			}else {
				// 에러 받는 코드
				inputStream = URLConnection.getErrorStream();
			}
			
			// 받아온것을 읽는 변수
			InputStreamReader inputStreamReader = new InputStreamReader(inputStream);
			// System.out.println("inputStreamReader : " + inputStreamReader);
			
			// 바이트형식을 다시 형변환해줌
			BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
			return bufferedReader.readLine();
			
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "[\result\":\" NO\"]";
	}
	
	@RequestMapping(value = "developers.kakao.com/success.kakao", method = RequestMethod.GET)
    public String handleRequest(@RequestParam String pg_token, Model model, @RequestParam("tid") String tid) {
		System.out.println("일로와라");
		System.out.println("tid          " + tid);
		System.out.println("pg      " + pg_token);
		try {
		URL url = new URL("https://kapi.kakao.com/v1/payment/approve");
		HttpURLConnection URLConnection = (HttpURLConnection) url.openConnection();
		URLConnection.setRequestMethod("POST");
		//Authorization 인증
		URLConnection.setRequestProperty("Authorization", "KakaoAK 0e9ba8c30383477a88a744b29e95fe0a");
		URLConnection.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		URLConnection.setDoOutput(true); // 서버를 통해 전해줄 것이 있는지 없는지를 무조건 true로 설정함
		// input은 하는 이유 : 만들면 input은 무조건 true로 됨
		//System.out.println(URLConnection);
		// 파라미터 기본값은 개발자 페이지 밑에 있음
		String parameter = 
				  "cid=TC0ONETIME"
				+ "&tid="+tid
				+ "&partner_order_id=partner_order_id"
				+ "&partner_user_id=partner_user_id"
				+ "&pg_token="+pg_token;
		
		// 데이터를 api로 줄수 있게됨
					OutputStream outputStream = URLConnection.getOutputStream(); 
					
					// 데이터를 주는 변수
					DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
					// 바이트형식으로 서버에 전달
					dataOutputStream.writeBytes(parameter);
					
					// 담겨있던 데이터 비우고 닫아줌
					dataOutputStream.flush();
					dataOutputStream.close();
					// System.out.println("dataOutputStream : " + dataOutputStream);
					
					int result = URLConnection.getResponseCode();
					// System.out.println("result : " + result);
					InputStream  inputStream; // 받는애
					
					// http에서 성공은 200, 나머지는 다 에러
					if(result == 200) {
						inputStream = URLConnection.getInputStream();
					}else {
						// 에러 받는 코드
						inputStream = URLConnection.getErrorStream();
					}
					
					// 받아온것을 읽는 변수
					InputStreamReader inputStreamReader = new InputStreamReader(inputStream);
					// System.out.println("inputStreamReader : " + inputStreamReader);
					
					// 바이트형식을 다시 형변환해줌
					BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
					System.out.println("bufferedReader2 : " + bufferedReader);
					String aa = bufferedReader.readLine();
					model.addAttribute("aa", aa);
					
					return "/common/success";
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "/common/success";
    }
	
	/**
	 * @jw(10.27)
	 * @마이페이지 로딩 완료 후 장바구니 옵션 selectbox 조회
	 */	
	@ResponseBody
	@RequestMapping(value="selectMyPageCartAjax.pr", produces="application/json; charset=utf-8")
	public String selectMyPageCartAjax(int userNo) {
		
		// 장바구니 리스트
		ArrayList<Cart> mpCart = pService.selectMyPageCart(userNo);
		System.out.println("mpCart  " + mpCart);
		
		return new Gson().toJson(mpCart);
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
		
		int userNo = data.get(0).getUserNo();
		
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
	
	
	@RequestMapping("groupProductDetail")
	public String selectGroupProduct(int gno, Model model) {
		Product p = pService.selectGroupProduct(gno);
		
		double a = (100 - p.getSale())/Double.parseDouble("100");
		int b = (int) (p.getPrice()* a);
		p.setSale(b);
		
		String pno = p.getProductNo(); 
		
		ArrayList<Options> opList = pService.productOptionsAD(pno);
		ArrayList<Review> rList = pService.selectReviewList(pno);
		ArrayList<Attachment> atList = pService.productDetailImgAD(pno);
		
		model.addAttribute("p", p);
		model.addAttribute("opList", opList);
		model.addAttribute("rList", rList);
		model.addAttribute("atList", atList);
		return "product/groupBuyDetail";
	}
		
}


























