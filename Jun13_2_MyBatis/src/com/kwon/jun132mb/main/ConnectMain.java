package com.kwon.jun132mb.main;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

// MyBatis
//		Java + DB 유지보수 용이
//		DB ORM(Object Relationship Mapping) Framework

//					DB연결정보		SQL
// JDBC				.java			.java
// ConnectionPool	context.xml		.java
// MyBatis			???.xml			???.xml

public class ConnectMain {
	public static void main(String[] args) {
		SqlSession ss = null; 	// Connection con = null;
		try {
			InputStream is = Resources.getResourceAsStream("aaaa.xml");
			SqlSessionFactoryBuilder ssfb = new SqlSessionFactoryBuilder();
			SqlSessionFactory ssf = ssfb.build(is);
			ss = ssf.openSession();
			System.out.println("성공");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		ss.close();
	}
}





