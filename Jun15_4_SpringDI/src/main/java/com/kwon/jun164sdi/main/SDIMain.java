package com.kwon.jun164sdi.main;

import org.springframework.beans.factory.support.DefaultListableBeanFactory;
import org.springframework.beans.factory.xml.XmlBeanDefinitionReader;
import org.springframework.core.io.ClassPathResource;

import com.kwon.jun164sdi.dog.Dog;

//	beans.xml에 객체 만들어놓은거고, java쪽에서는 불러오기만 하는거
//	dlbf : 처음 부를때 만들뿐
public class SDIMain {
	public static void main(String[] args) {
		DefaultListableBeanFactory dlbf = new DefaultListableBeanFactory();
		XmlBeanDefinitionReader xbdr = new XmlBeanDefinitionReader(dlbf);
		xbdr.loadBeanDefinitions(new ClassPathResource("beans.xml"));
		
		System.out.println("ㅋ");
		
		Dog dd1 = dlbf.getBean("d1", Dog.class);
		dd1.print();
		
		Dog dd2 = dlbf.getBean("d1", Dog.class);
		dd2.print();
		
		System.out.println(dd1);
		System.out.println(dd2);
		
	}
}











