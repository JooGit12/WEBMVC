package com.kwon.jun132mb.main;

import org.apache.ibatis.session.SqlSession;

import kiung.kwon.db.manager.KwonDBManager;

// 실행 -> static붙은것들 다 만들어지고 -> main으로

public class ConnectMain2 {
	public static void main(String[] args) {
		SqlSession ss = null;
		try {
			KwonDBManager.getKdbm().setSqlSessionFactory("aaaa.xml");
			ss = KwonDBManager.getKdbm().connect();
			System.out.println("성공");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		ss.close();
	}
}





