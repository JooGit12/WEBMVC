package com.kwon.jun164sdi.main;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.kwon.jun164sdi.dog.Dog;

public class SDIMain3 {
	public static void main(String[] args) {
		AbstractApplicationContext aac 
			= new ClassPathXmlApplicationContext("beans.xml");
		aac.registerShutdownHook();
		
		Dog dd1 = aac.getBean("d1", Dog.class);
		dd1.print();
		System.out.println("-----");
		
		Dog dd2 = aac.getBean("d2", Dog.class);
		dd2.print();
		System.out.println("-----");
		
		Dog dd3 = aac.getBean("d3", Dog.class);
		dd3.print();
		
		aac.close();
	}
}
