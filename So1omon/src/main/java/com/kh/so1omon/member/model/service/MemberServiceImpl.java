package com.kh.so1omon.member.model.service;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.JsonParser;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.kh.so1omon.member.model.dao.MemberDao;
import com.kh.so1omon.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDao mDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public Member loginMember(Member m) {
		return mDao.loginMember(sqlSession, m);
	}  

	@Override
	public int insertMember(Member m) {
		return mDao.insertMember(sqlSession, m);
	}
	

	@Override
	public int updateMember(Member m) {
		return mDao.updateMember(sqlSession, m);
	}   


	@Override
	public Member findIdUsePhone(Member m) {
		return mDao.findIdUsePhone(sqlSession,m);
	}

	@Override
	public Member findIdUseEmail(Member m) {
		return mDao.findIdUseEmail(sqlSession,m);
	}

	@Override
	public int findIdChangePwd(Member m) {
		return mDao.findIdChangePwd(sqlSession,m);
	}

	@Override
	public int idCheck(String checkId) {
		return mDao.idCheck(sqlSession, checkId);

	}

	@Override
	public int showMyWish(int userNo) {
		return mDao.showMyWish(sqlSession, userNo);
	}

	@Override
	public int updatePwd(HashMap<String, Object> map) {
		
		return mDao.updatePwd(sqlSession, map);
	}
	
	
	public ArrayList<Member> selectMemberListAD(int num, int limit, String keyword) {
		return mDao.selectMemberListAD(sqlSession, num, limit, keyword);
	}

	@Override
	public Member selectMemberAD(int userNo) {
		return mDao.selectMemberAD(sqlSession, userNo);
	}

	@Override
	public int deleteMember(int userNo) {
		return mDao.deleteMember(sqlSession, userNo);
	}

	/*
	@Override
	public String getAccessToken(String code){
		String access_Token = "";
		String refresh_Token = "";
		String reqURL = "https://kauth.kakao.com/oauth/token";
		
		try {
			URL url = new URL(reqURL);

		HttpURLConnection urlConnection = (HttpURLConnection)url.openConnection();
		urlConnection.setRequestMethod("POST");
		urlConnection.setDoOutput(true);
		
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(urlConnection.getOutputStream()));
		StringBuilder sb = new StringBuilder();
        sb.append("grant_type=authorization_code");
        sb.append("&client_id=788a3f81192118c87ba75b7e62d74ec0"); 
        sb.append("&redirect_uri=http://localhost:8888/so1omon/kakaoLogin");     
        sb.append("&code=" + code);
        bw.write(sb.toString());
        bw.flush();
        
        int responseCode = urlConnection.getResponseCode();
        
        BufferedReader br = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()));
		String result = "";
		String line;
		
		while((line = br.readLine())!= null) {
			result += line;
			System.out.println(result);
		}
		
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	*/
	
	@Override
	public String getAccessToken(String code) {
	    String tokenResponse = null;
	    String reqURL = "https://kauth.kakao.com/oauth/token";

	    try {
	        URL url = new URL(reqURL);
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	        
	        // POST 요청을 위한 설정
	        conn.setRequestMethod("POST");
	        conn.setDoOutput(true);

	        // 헤더 설정
	        conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
	        
	        // 뽑아야 될 파라미터를 put으로 입력
	        Map<String, String> params = new HashMap<>();
	        params.put("grant_type", "authorization_code");
	        params.put("client_id", "788a3f81192118c87ba75b7e62d74ec0");
	        params.put("redirect_uri", "http://localhost:8888/so1omon/kakaoLogin");
	        params.put("code", code);
	        params.put("client_secret", "ZAtcC7BAybTw1ftftspO3rzeMzdiXRWs");

	        StringBuilder postData = new StringBuilder();
	        for (Map.Entry<String, String> param : params.entrySet()) {
	            if (postData.length() != 0) postData.append('&');
	            postData.append(param.getKey());
	            postData.append('=');
	            postData.append(param.getValue());
	        }

	        try (OutputStream os = conn.getOutputStream()) {
	            os.write(postData.toString().getBytes("UTF-8"));
	            os.flush();
	        }
	        
	        // 정상적인 응답이 오는 경우
	        int responseCode = conn.getResponseCode();
	        if (responseCode == 200) {
	            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	            StringBuilder sb = new StringBuilder();
	            String line;
	            while ((line = br.readLine()) != null) {
	                sb.append(line);
	            }
	            tokenResponse = sb.toString();
	        } else {
	        	// 정상적인 응답이 오지 않는 경우 에러 출력용
	            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
	            StringBuilder sb = new StringBuilder();
	            String line;
	            while ((line = br.readLine()) != null) {
	                sb.append(line);
	            }
	            System.out.println("Error response: " + sb.toString());
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return tokenResponse;
	}

	@Override
	public Member getUserInfo(String accessToken) throws IOException {
		
        HashMap<String, Object> userInfo = new HashMap<String, Object>();
        String reqURL = "https://kapi.kakao.com/v2/user/me";
        
        URL url = new URL(reqURL);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("POST");     
        conn.setRequestProperty("Authorization", "Bearer " + accessToken);
        conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
        conn.setRequestProperty("charset", "utf-8");
        conn.setDoOutput(true);

        int responseCode = conn.getResponseCode();
        BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(),"UTF-8"));

        String line = "";
        String result = "";

        while ((line = br.readLine()) != null) {
            result += line;
        }
        
        Gson gson = new Gson();
        JsonElement element = gson.fromJson(result, JsonElement.class);
        

        JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
        JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();

        String nickname = properties.getAsJsonObject().get("nickname").getAsString();
        String profile_image = properties.getAsJsonObject().get("profile_image").getAsString();
        String email = kakao_account.getAsJsonObject().get("email").getAsString();
        
        //잘뽑히는지 테스트
        //여기서 DB에 필요한 데이터들을 만들어서 다 Map에 넣어줘야 한다.
        //받아올수 있는 데이터 : 닉네임, 이메일, 프로필 제외
        /*
         * 넣어주어야 하는 데이터 : 아이디(이메일 그대로 활용)
         * 					 비밀번호(kakaoPwd+년월일시+난수3자리로 만들어 넣어줌)
         * 					 주소(만들어서 넣어줌, 카카오에서 가져올 수 없음)
         * 					 휴대폰번호(만들어서 넣어줌, 카카오에서 가져올 수 없음)
         * 					 
         */
        userInfo.put("nickName", nickname);
        //System.out.println("다와간다 : " + nickname);
        userInfo.put("email", email);
        //System.out.println(email);
        userInfo.put("profile", profile_image);
        System.out.println(profile_image);
        
        //비밀번호 년월일시분초 + 3자리 랜덤값
        LocalDateTime now = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
        String formattedNow = now.format(formatter);
        Random random = new Random();
        int randomNum = random.nextInt(1000);  // 0~999 사이의 난수
        String formattedRandomNum = String.format("%03d", randomNum);  // 난수를 3자리 문자열로 포맷
        String pwd = "kakaoPwd" + formattedNow + formattedRandomNum;
        
        userInfo.put("userPwd", pwd);
        //System.out.println("비밀번호 테스트 : " + pwd);
        
        userInfo.put("address", "서울특별시 강남구 테헤란로 7길 솔로몬타워 123층");
        userInfo.put("phone", "010-0000-0000");
        userInfo.put("userId", email);
        userInfo.put("userName", nickname);
        userInfo.put("userToken", "kakao");
        
        // Sns를 통해서 회원가입하지 않은 일반 회원인지 확인 하는 구문
        // 이메일을 검사해서 동일한 이메일이 있으면, 회원가입을 하였지만 Sns연동은 되지 않은 상태로 간주
        
        int findNomalMember = mDao.findNomalMember(sqlSession, userInfo);
        System.out.println("sns미인증 회원확인 : " + findNomalMember);
        if(findNomalMember != 1) {
        	System.out.println("여기는 sns미인증 회원 변경 구문");
        	// 카카오 회원가입을 하지 않은경우
        	/*
        	 * 주요변경사항
        	 * 		아이디 : 카카오이메일
        	 * 		이메일 : 카카오이메일
        	 * 		프로필 : 카카오프로필
        	 * 그 외 나머지는 유지
        	 */
        	int enrollResult = mDao.enrollMemberKakao(sqlSession, userInfo);
        	
        	if(enrollResult > 0) {
        		return mDao.findKakao(sqlSession,userInfo);
        	}else {
        		return new Member();
        	}
        	
        }else {
        	// 카카오 회원가입을 한경우
        	Member findMember = mDao.findKakao(sqlSession,userInfo);
        	if(findMember == null) {
        		mDao.insertMemberKakao(sqlSession, userInfo);
        		
        		return mDao.findKakao(sqlSession,userInfo);
        	}else {
        		//닉네임, 프로필사진만 변경
        		mDao.updateMemberKakao(sqlSession, userInfo);
        		
        		return mDao.findKakao(sqlSession,userInfo);
        	}
        }

        
	}

	@Override
	public int emailCheck(String checkEmail) {
		return mDao.emailCheck(sqlSession, checkEmail);
	}

}
