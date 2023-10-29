package com.kh.so1omon.product.model.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class KakaoPayReadyVo {
	private String tid;
	private String next_redirect_moblie_url;
	private String next_redirect_pc_url;
	private String partner_order_id;
}
