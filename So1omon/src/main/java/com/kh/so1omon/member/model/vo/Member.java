package com.kh.so1omon.member.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@ToString
public class Member {
	private int userNo;
	private String userId;
	private String userPwd;
	private String userName;
	private String nickName;
	private String address;
	private String email;
	private String phone;
	private int point;
	private String profile;
	private Date enrollDate;
	private Date modifyDate;
	private String status;
	private String userToken;
}
