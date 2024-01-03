package com.kwon.jun132mb.main;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SelectMain {
	public static void main(String[] args) {
		SqlSession ss = null;
		try {
			InputStream is = Resources.getResourceAsStream("aaaa.xml");
			SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(is);
			ss = ssf.openSession();

			// Avengers - Ironman
			// List - ArrayList
			List<Coffee> coffees = ss.selectList("coffeeMapper.getCoffee");

			for (Coffee coffee : coffees) {
				System.out.println(coffee.getC_name());
				System.out.println(coffee.getC_price());
				System.out.println("-----");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		ss.close();
	}
}
