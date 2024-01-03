package com.kwon.jun162smvc.calc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

// servlet-context.xml에 자동등록
@Service
public class Calculator {
	public void calculate(XY xy, HttpServletRequest req) {
		int z = xy.getXx() + xy.getYy();
		req.setAttribute("z", z);
	}
}
