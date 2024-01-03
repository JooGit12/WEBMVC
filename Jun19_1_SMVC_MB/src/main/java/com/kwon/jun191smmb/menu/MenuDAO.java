package com.kwon.jun191smmb.menu;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MenuDAO {
	
	@Autowired
	private SqlSession ss;
	
	public void get(HttpServletRequest req) {
		MenuMapper mm = ss.getMapper(MenuMapper.class);
		List<Menu> menus = mm.get();
		req.setAttribute("menus", menus);
		
		// req.setAttribute("menus", ss.getMapper(MenuMapper.class).get());
	}
	
	public void reg(Menu m, HttpServletRequest req) {
		try {
			if (ss.getMapper(MenuMapper.class).reg(m) == 1) {
				req.setAttribute("result", "성공");
			}
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("result", "등록실패");
		}
		// interface
		//MenuMapper mm = ss.getMapper(MenuMapper.class);
		
		// abstract method
		//mm.reg(m);
	}
	
}




