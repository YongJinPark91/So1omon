package com.kh.so1omon.product.controller;

import java.io.BufferedReader;


import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.http.HttpResponse;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Optional;
import java.util.Spliterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.so1omon.common.model.service.CommonServiceImpl;
import com.kh.so1omon.common.model.vo.Alert;
import com.kh.so1omon.common.model.vo.Attachment;
import com.kh.so1omon.handler.EchoHandler;
import com.kh.so1omon.product.model.dao.ProductDao;
import com.kh.so1omon.member.controller.MemberController;
import com.kh.so1omon.member.model.service.MemberServiceImpl;
import com.kh.so1omon.member.model.service.PointServiceImp;
import com.kh.so1omon.member.model.vo.Member;
import com.kh.so1omon.product.model.service.ProductServiceImp;
import com.kh.so1omon.product.model.vo.Cart;
import com.kh.so1omon.product.model.vo.Category;
import com.kh.so1omon.product.model.vo.GroupBuy;
import com.kh.so1omon.product.model.vo.GroupBuyer;
import com.kh.so1omon.product.model.vo.HotBuy;
import com.kh.so1omon.product.model.vo.GroupEnroll;
import com.kh.so1omon.product.model.vo.Options;
import com.kh.so1omon.product.model.vo.Orders;
import com.kh.so1omon.product.model.vo.Product;
import com.kh.so1omon.product.model.vo.SelectVo;
import com.kh.so1omon.product.model.vo.Review;
import com.kh.so1omon.product.model.vo.Wish;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

import okhttp3.Response;

@Controller
public class ProductController {
	
	private static long userNo = 0;
	private static long tracking;
	private static Date orderDate;
	private static String cashType;
	private static String status;
	private static long totalPrice;
	private static String address;
	private static String memberStatus;
	private static String productNo;
	private static String optionName;
	private static String volume;
	private static long orderNo;
	private static long point;
	
	private IamportClient api;
	
	public ProductController() {
    	// REST API 키와 REST API secret 를 아래처럼 순서대로 입력한다.
		this.api = new IamportClient("6717836160421464","UoSm773MKZnFLe1ARwsftGohKZ82CNt1FkWgkbxbanfkOZciqWsjNRqfDVjGuPNbWD5wsSCUFiUzrWs0");
	}
	
	
	@Autowired
	private ProductServiceImp pService;
	@Autowired
	private CommonServiceImpl cService;
	@Autowired
	private PointServiceImp poService;
	@Autowired
	private EchoHandler handler;
	@Autowired
	private MemberServiceImpl mService;
//	@Autowired
//	private MemberController mControll;
	
	@ResponseBody
	@RequestMapping("staticUserNo.yj")
	public long checkUserNo(long userKey, HttpSession session) {
		this.userNo = userKey;
		session.setAttribute("userNo", userNo);
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
		
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date(System.currentTimeMillis()));
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
		model.addAttribute("categoryL", p.getCategoryL().substring(0, p.getCategoryL().indexOf("-")));
		model.addAttribute("categoryS", p.getCategoryS().substring(p.getCategoryS().indexOf("-")));
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
	@RequestMapping(value = "showMyWish.yj")
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
	public int removeCart(String productNo, String optionName) {
		Cart c = new Cart();
		c.setProductNo(productNo);
		c.setOptionName(optionName);
		c.setUserNo(userNo);
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
		c.setUserNo(userNo);
		System.out.println(c.getOptionName());
		System.out.println(c.getProductNo());
		int result = pService.myPageRemoveCart(c);
		System.out.println("드루와ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ" + c);
		System.out.println(result);
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
			System.out.println("찜하기 상품번호 : " + productNo);
			System.out.println("찜하기 쿠키확인 : " + userNo);
			
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
	public String nomalProduct(String categoryS,HttpSession session, Model model) {
		//System.out.println(categoryS);
		ArrayList<Product> productList = pService.selectProductList(categoryS);
		if(productList != null) {
			session.setAttribute("productList", productList);
			session.setAttribute("category", categoryS);
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
//				long userNo = ((Member)session.getAttribute("loginMember")).getUserNo();
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
			session.setAttribute("userNo1", userNo);
			
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
	
	@ResponseBody
	@RequestMapping(value="selectMyPageCartAjax1.pr", produces="application/json; charset=utf-8")
	public String selectMyPageCartAjax1() {
		
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
	public String movePayment(Model model) {
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
	
	// 상품 디테일에서 바로 구매 시 넘어가는 상품 구매 창
	@RequestMapping("productDetailMovePayment.pr")
	public String productDetailMovePayment() {
		return null;
	}
		
		
		
	
		

	
	/**
	 * @yj(10.29)
	 * @헤더 네비바 -> 공동구매리스트
	 */
	@RequestMapping(value="groupBuyList.yj")
	public String selectGroupBuyList(String categoryL, HttpSession session, Model model) {
		System.out.println(categoryL);
		ArrayList<GroupBuy> groupBuyList = pService.selectGroupBuyList(categoryL);
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
	public String selectNormalController(String keyword, String changeKey) {
		ArrayList<Product> list = pService.selectNormalController(keyword,changeKey);
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
		
		long userNo = this.userNo;
		System.out.println("여기는 상품디테일 컨트롤 : " + userNo);
		
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
		
		if(result > 0 || result1 > 0) {
			return "Success";
		}else {
			return "Fail";
		}
		
	}
	
	@ResponseBody
	@RequestMapping(value = "productCompletePaymentView1.pr", method = RequestMethod.POST)
    public String productCompletePaymentView(@RequestBody Orders data, Model model) {
        // data 객체에 Payload에서 추출한 데이터가 바인딩됩니다.
        //Long userNo = data.getUserNo();
        this.tracking = data.getTracking();
        this.orderDate = data.getOrderDate();
        this.cashType = data.getCashType();
        this.status = data.getStatus();
        this.totalPrice = data.getTotalPrice();
        this.address = data.getAddress();
        this.memberStatus = data.getMemberStatus();
        this.productNo = data.getProductNo();
        this.optionName = data.getOptionName();
        this.volume = data.getVolume();
        this.orderNo = data.getOrderNo();
        this.point = data.getPoint();
        
        // 잘 나오는지 테스트
        /*
        System.out.println("userNo : "+userNo);
        System.out.println("tracking : "+tracking);
        System.out.println("orderDate : "+ orderDate);
        System.out.println("cashType : "+cashType);
        System.out.println("status : "+status);
        System.out.println("totalPrice : "+totalPrice);
        System.out.println("address : "+address);
        System.out.println("memberstatus : "+ memberStatus);
        System.out.println("productNo : "+productNo);
        System.out.println("optionName : "+optionName);
        System.out.println("volume : "+volume);
        System.out.println("orderNo : "+orderNo);
        
        System.out.println("================여기는 데이터 넘기는 controller===============");
        System.out.println("productNo : " + productNo);
        System.out.println("volume : " + volume);
        System.out.println("optionName : " + optionName);
        System.out.println("================여기는 데이터 넘기는 controller===============");
        */
        ArrayList list = new ArrayList();
        list.add(orderNo);
        list.add(tracking);
        list.add(productNo);
        list.add(volume);
        list.add(optionName);
        
        return new Gson().toJson(list);
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
	
		





	
	
	@RequestMapping("groupProductDetail")
	public String selectGroupProduct(String gno, Model model) {
		GroupBuy p = pService.selectGroupProduct(gno);
		
		double a = (100 - p.getSale())/Double.parseDouble("100");
		int b = (int) (p.getPrice()* a);
		p.setSale(b);
		
		String pno = p.getProductNo(); 
		
		ArrayList<Options> opList = pService.productOptionsAD(pno);
		ArrayList<Review> rList = pService.selectReviewList(pno);
		ArrayList<Attachment> atList = pService.productDetailImgAD(pno);
		
		
		model.addAttribute("p", p); // 상품정보
		model.addAttribute("opList", opList); // 옵션정보
		model.addAttribute("rList", rList); // 리뷰리스트
		model.addAttribute("atList", atList); // 상품 상세사진
		
		return "product/groupBuyDetail";
	}
		
	/**
	 * @yj(10.31)
	 * @메인페이지 핫딜
	 */
	@ResponseBody
	@RequestMapping(value = "hotBuy.yj", produces = "application/json; charset=utf-8")
	public String hotBuy() {
		ArrayList<HotBuy> list = pService.selectHotBuyList();
		return new Gson().toJson(list);
	}
	
	/**
	 * @yj(11.1)
	 * @핫딜 리스트 페이지
	 */
	@RequestMapping(value = "hotBuyList.yj")
	public String hotBuyList(String categoryL, HttpSession session, Model model) {
		ArrayList<HotBuy> hotList = pService.selectHotList(categoryL);
		if(hotList != null) {
			session.setAttribute("hotList", hotList);
			return "product/hotDealList";
		}else {
			model.addAttribute("errorMsg", "핫딜 조회에 실패하였습니다.");
			return "common/errorPage";
		}
	}
	
	/**
	 * @yj(11.01)
	 * @메인페이지 핫딜 예정상품 조회
	 */
	@ResponseBody
	@RequestMapping(value = "timeDeal.yj", produces = "application/json; charset=utf-8")
	public String timeDeal() {
		ArrayList<HotBuy> list = pService.selectTimeDeal();
		return new Gson().toJson(list);
	}
	
	/**
	 * @yj(11.02)
	 * @메인페이지 헤더 장바구니 정보조회
	 */
	@ResponseBody
	@RequestMapping(value = "mainCartView.yj", produces = "application/json; charset=utf-8")
	public String mainSelectCart() {
		ArrayList<Cart> list = pService.mainSelectCart(userNo);
		System.out.println(userNo);
		return new Gson().toJson(list);
	}
	
	@ResponseBody
	@RequestMapping(value = "selectPoint.yj")
	public int selectPointYJ(long userNo) {
		System.out.println("아제발 진짜 찾아보자 : "+userNo);
		int result = pService.selectPointYJ(userNo);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="selectGroupEnrollList", produces="application/json; utf-8")
	public String selectGroupEnrollList(String gno) {
		ArrayList<GroupEnroll> eList = pService.selectGroupEnrollList(gno);
		return new Gson().toJson(eList);
	}
	
	@ResponseBody
	@RequestMapping("enrollGroupBuy")
	public String insertGroupEnroll(GroupEnroll e, String userId) {
		ArrayList<GroupBuyer> mList = new ArrayList<GroupBuyer>();
		
		mList = pService.checkGroupEnroll(e.getGbuyNo());
		
		for(GroupBuyer g : mList) { // 이미신청
			System.out.println(g.getUserId());
			if(g.getUserId().equals(userId)) {
				System.out.println("있음");
				return "Fail"; 
			}
		}
		System.out.println(userId);
		GroupBuyer gb = new GroupBuyer();
		gb.setUserId(userId);
		System.out.println(gb);
		
		int result = pService.insertGroupEnroll(e);
		int result1 = pService.insertGroupBuyer(gb);
		
		if(result * result1 > 0) {
			return "Success";
		}else {
			return "Fail";
		}
	}

	
	@ResponseBody
	@RequestMapping("insertGroupBuyer")
	public String insertGroupBuyer(GroupBuyer gb, int gbuyMin) throws IOException {
		ArrayList<GroupBuyer> mList = new ArrayList<GroupBuyer>();
		
		mList = pService.checkGroupEnroll(gb.getGbuyNo());
		
		for(GroupBuyer g : mList) { // 이미신청
			if(g.getUserId().equals(gb.getUserId())) {
				return "Fail"; 
			}
		}		
		
		int result = 0;
		int count = pService.checkGroupBuyer(gb.getEnrollNo()); // 다시 카운트 조회
		
		if(count >= gbuyMin) {
			System.out.println("체크 : 큼 안됨");
			return "Full";
		}else{
			result = pService.insertGroupBuyer(gb); // 공동상품 신청
			checkFullGroup(gb, gbuyMin);
			return "Success";
		}
		
		
	}
	
	public void checkFullGroup(GroupBuyer gb, int gbuyMin) throws IOException {
		int count = pService.checkGroupBuyer(gb.getEnrollNo());
		if(count == gbuyMin) { // 다 참
			
			ArrayList<GroupBuyer> gbList = pService.selectGroupBuyer(gb);
			handler.alramGroupBuy(gbList, gb); // 웹소켓
			
			Alert a = new Alert();
			ArrayList<Cart> cList = new ArrayList<Cart>();
			
			for(GroupBuyer g : gbList) {
				
				a.setUserId(g.getUserId());
				a.setAlertContent("신청하신 " + gb.getProductName() + " 공동구매 상품의 인원이 다 모여 장바구니에 담겼습니다. 결제를 진행해주세요.");
				a.setRefNo(gb.getGbuyNo());
				cService.insertBoardAlert(a); // 알람 insert
				
				Cart c = new Cart();
				c.setProductNo(gb.getGbuyNo());
				c.setOptionName(gb.getOptionName());
			    c.setUserNo(g.getUserNo());
				c.setVolume(1);
				
				cList.add(c);
			}
			
			int result = pService.insertCart(cList);
			System.out.println("result : " + result);
			return;
			
			
			
		}
	}
	
	
	/**
	 * @yj,jw(11.04)
	 * @결제 후 장바구니 삭제
	 */
	@RequestMapping(value = "/productCompletePaymentView", produces = "text/html; charset=UTF-8")
	public String successPayment(HttpSession session, Model model) {
	    if (orderNo != 0 && tracking != 0) {
	    	/*
	        System.out.println("여기까지 오나?");
	        System.out.println("orderNo : " + orderNo);
	        System.out.println("tracking : " + tracking);
	        System.out.println("productNo : " + productNo);
	        System.out.println("volume : " + volume);
	        System.out.println("optionName : " + optionName);
	        */
	    	System.out.println("내가 사용한 포인트 " + point);
	    	
	        Orders o = new Orders();
	        o.setOrderNo(orderNo);
	        o.setTracking(tracking);
	        o.setProductNo(productNo);
	        o.setVolume(volume);
	        o.setOptionName(optionName);
	        o.setUserNo(userNo);
	        o.setCashType(cashType);
	        o.setStatus(status);
	        o.setMemberStatus(memberStatus);
	        o.setAddress(address);
	        o.setTotalPrice(totalPrice);
	        o.setOrderDate(orderDate);
	        o.setPoint(point);
	        
	        // orders 테이블에 insert (1반환)
	        int insertOrder = pService.paymentInsertOrder(o);
	        
	        // order-detail 테이블에 insert (1반환)
	        int insertOrderDetail = pService.paymentInsertOrderDetail(o);
	        
	        // point 테이블에 사용포인트 및 적립포인트 내역 insert (1또는 2 반환)
	        int insertOrderDetailPointReport = poService.paymentInsertPoint(o);
	        
	        // member 테이블에 적립 및 사용포인트 적용 update (1반환)
	        int updateMemberPoint = mService.paymentUpdatePoint(o);
	        
	        // option 테이블에 재고 뺴는 update (1반환)
	        int updateOptionsMinusStock = pService.paymentUpdateStock(o);
	        
	        // 결제 후  결제된 Cart 테이블 데이터 제거 (1반환)
	        int deleteCartAll = pService.paymentDeleteCart(o);
	        
	        
	        if(insertOrder > 0) {
	        	System.out.println("오더 인서트 성공");
	        }else {
	        	System.out.println("아..실패");
	        }
	        
	        
	        session.setAttribute("o", o);
	        System.out.println("여기까지 오나? 2 : " + o);
	        return "product/productCompletePaymentView";
	    } else {
	        // userNo 또는 tracking 값이 null인 경우 처리
	        // 예를 들어 오류 페이지로 리다이렉트 또는 다른 처리를 수행
	    	model.addAttribute("errorMsg", "결제를 실패하였습니다. 다시 결제 해주시기 바랍니다.");
	        return "commmon/errorPage";
	    }
	}
	
	@RequestMapping(value = "nomemberPage.yj")
	public String nomembrPage(Model model) {
		ArrayList<Cart> cartList = pService.selectNoMemberCart(userNo);
		
		model.addAttribute("mpCart", cartList);
		model.addAttribute("userNo", userNo);
		
		
		return "member/nomemberMyPage";
	}

	@RequestMapping("insertReview.pd")
	public String insertReview(Review r, Model model) {
		int result = pService.insertReview(r);
		if(result > 0) {
			model.addAttribute("mno", userNo);
			model.addAttribute("tabName", "orders");
			return "redirect:/myPage.me";
		}else {
			model.addAttribute("errorMsg", "결제를 실패하였습니다. 다시 결제 해주시기 바랍니다.");
			return "commmon/errorPage";
		}
	}
	
//	@ResponseBody
//	@RequestMapping(value = "reviewCheck.yj")
//	public int reviewCheck(long orderNo, String productNo, String optionName ) {
//		System.out.println("=========여기는 컨트롤러=========");
//		System.out.println(orderNo);
//		System.out.println("=========여기는 컨트롤러=========");
//		Review re = new Review();
//		re.setUserNo(userNo);
//		re.setOrderNo(orderNo);
//		re.setProductNo(productNo);
//		re.setOptionName(optionName);
//		
//		int result = pService.myReview(re);
//		
//		return result;
//	}
	 
}






















