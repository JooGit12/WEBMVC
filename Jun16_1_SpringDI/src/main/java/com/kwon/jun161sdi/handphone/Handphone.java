package com.kwon.jun161sdi.handphone;

import org.springframework.beans.factory.annotation.Autowired;

import com.kwon.jun161sdi.company.Company;

public class Handphone {
	
	// beans2.xml에 등록되어있는
	// 그 하나뿐인 회사랑 자동 연결
	// aac방식이어야만
	@Autowired
	private Company maker;
	
	// 생성자 x
	// getter/setter x
	
	public void print() {
		maker.print();
	}
}
