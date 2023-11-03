package com.kh.so1omon.product.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class GroupBuyer {
	private int gbuyNo;
	private long userNo;
	private int enrollNo;
	private String userId;
}
