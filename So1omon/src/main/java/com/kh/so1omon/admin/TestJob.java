package com.kh.so1omon.admin;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

public class TestJob implements Job{

	@Override
	public void execute(JobExecutionContext context) throws JobExecutionException {
		System.out.println("테스트입니다");
	}
	
	
	/*
	public void testJobMethod() {
		System.out.println("테스트입니다");
	}
	 */
	

}
