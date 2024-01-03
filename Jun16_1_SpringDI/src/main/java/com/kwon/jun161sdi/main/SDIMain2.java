package com.kwon.jun161sdi.main;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.kwon.jun161sdi.handphone.Handphone;

public class SDIMain2 {
	public static void main(String[] args) {
		AbstractApplicationContext aac = new ClassPathXmlApplicationContext("beans2.xml");
		aac.registerShutdownHook();
		
		Handphone h = aac.getBean("h", Handphone.class);
		h.print();
		
		aac.close();
	}
}
