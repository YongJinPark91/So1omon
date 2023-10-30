package com.kh.so1omon.product.model.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class SelectVo {

		private Options options;
		private Cart cart;

	public SelectVo(Options options, Cart cart) {
		this.options = options;
        this.cart = cart;	
        }
}
