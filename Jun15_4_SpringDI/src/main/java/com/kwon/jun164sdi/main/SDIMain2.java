package com.kwon.jun164sdi.main;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

// aac : 일단 다 만들어놓음
public class SDIMain2 {
	public static void main(String[] args) {
		AbstractApplicationContext aac
			= new ClassPathXmlApplicationContext("beans.xml");
		
		// aac가 없어질때 만들어놨던 객체들 없애라고
		aac.registerShutdownHook();
		
		System.out.println("ㅋ");
		
		// Dog dd1 = aac.getBean("d1", Dog.class);
		// dd1.print();
		
		aac.close(); // aac없애기 -> 만들어놨던 객체 없애기
	}
}



