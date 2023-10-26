package com.kh.so1omon.board.run;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.JsonArray;
import com.kh.so1omon.board.model.vo.OneBoard;

public class OneBoardJavaApp {
	
	private static final String key = "646441756761696b36304a5957496a";
	
	public static void main(String[] args) throws IOException {
		
		String url = "http://openapi.seoul.go.kr:8088";
		
		url += "/" + key;
		url += "/json/tbPartcptn";
		url += "/1"; // start_index
		url += "/100"; // end_index
			
		URL requestURL = new URL(url);
		
		HttpURLConnection urlConnection = (HttpURLConnection)requestURL.openConnection();
	
		urlConnection.setRequestMethod("GET");
		
		BufferedReader br = new BufferedReader( new InputStreamReader(urlConnection.getInputStream()));
		
		String responseText = "";
		
		String line;
		
		while((line = br.readLine()) != null) {
			System.out.println(line);
			responseText += line;
		}
		
		System.out.println(responseText);
	//		{
	//			"tbPartcptn":
	//				{
	//					"list_total_count":1613,"RESULT":
	//						{
	//							"CODE":"INFO-000","MESSAGE":"정상 처리되었습니다"},
	//								"row":
	//									[
	//										{
	//											"PARTCPTN_ID":"c9ffa1231ab342d0add3889b7251e19d",
	//											"PARTCPTN_SJ":"[노원구] 나만의 펜트하우스",
	//											"TY_NM":"프로그램",
	//											"SE_NM":"기타",
		
	
//		JsonObject totalObj = JsonParser.parseString(responseText).getAsJsonObject();
//		JsonObject tbPartcptnObj = totalObj.getAsJsonObject("tbPartcptn");
//		
//		
//		int totalCount = tbPartcptnObj.get("list_total_count").getAsInt(); 
//		
//		JsonArray rowArr = tbPartcptnObj.getAsJsonArray("row"); 
//	
//		ArrayList<OneBoard> list = new ArrayList<OneBoard>();
//		
//		for(int i=0; i<rowArr.size(); i++) {
//			
//			JsonObject row = rowArr.get(i).getAsJsonObject();
//			
//			OneBoard one = new OneBoard();
//			one.setPartcptn_id(row.get("PARTCPTN_ID").getAsString());
//			one.setAtrdrc_nm(row.get("ATRDRC_NM").getAsString());
//			one.setTy_nm(row.get("TY_NM").getAsString());
//			one.setPartcptn_sj(row.get("PARTCPTN_SJ").getAsString());
//			one.setSe_nm(row.get("SE_NM").getAsString());
//			one.setRcept_de1(row.get("RCEPT_DE1").getAsString());
//			one.setRcept_de2(row.get("RCEPT_DE2").getAsString());
//			one.setCn(row.get("CN").getAsString());
//			
//			list.add(one);
//			
//		}
//		
//		for(OneBoard o : list) {
//			System.out.println(o);
//		}
//		
//		
//		br.close();
//		urlConnection.disconnect();
	

		}
		
	
}

	
	
	
	
	
	
	
	
	