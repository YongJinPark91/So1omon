package com.kh.so1omon.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.so1omon.member.model.service.PointService;
import com.kh.so1omon.member.model.service.PointServiceImp;

@Controller
public class PointController {

	@Autowired
	private PointServiceImp pService;
}
