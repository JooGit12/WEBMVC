package com.kwon.jun164sdi.main;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.kwon.jun164sdi.human.Human;

public class SDIMain4 {
	public static void main(String[] args) {
		AbstractApplicationContext aac
			= new ClassPathXmlApplicationContext("beans.xml");
		aac.registerShutdownHook();
		System.out.println("-----");

		Human hh1 = aac.getBean("h1", Human.class);
		hh1.show();
		System.out.println("-----");
		
		Human hh2 = aac.getBean("h2", Human.class);
		hh2.show();
		System.out.println("-----");
		
		Date now = new Date();
		SimpleDateFormat sdf 
			= aac.getBean("sdf", SimpleDateFormat.class);
		String result = sdf.format(now);
		System.out.println(result);
		
		aac.close();
	}
}




