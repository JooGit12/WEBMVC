package com.kwon.jun261xj.snack;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SnackDAO {

	@Autowired
	private SqlSession ss;

	// 테이블을 표현하는 객체로 만들어서 리턴
	public Snacks get2() {
		List<Snack> snack = ss.getMapper(SnackMapper.class).get();
		Snacks snacks = new Snacks(snack);
		return snacks;
	}
	
	public void get(HttpServletRequest req) {
		req.setAttribute("snacks", 
				ss.getMapper(SnackMapper.class).get());
	}
	
	
}



