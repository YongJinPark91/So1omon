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
public class GroupEnroll {

	private String gbuyNo;
	private int enrollNo;
	private String optionName;
	private String userId;
	
	private String userName;
	
	
	private int enrollCount;
	private String profile;
}
