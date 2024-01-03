package com.kwon.jun162smvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

// JSP Model 2 : C가 Servlet(doGet, doPost 활용)
//			주소/프로젝트폴더명/컨트롤러명

// 주소/패키지마지막자리/마음대로
@Controller
public class HomeController {

	// te.st로 GET방식 요청받으면
	@RequestMapping(value="/te.st", method=RequestMethod.GET)
	public void test() {
		System.out.println("요청 받음");
	}
	
	@RequestMapping(value="/ab.cd", method=RequestMethod.GET)
	public void abcd() {
		System.out.println("abcd요청 받음");
	}
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String goInput() {
		// request.getRequestDispatcher("input.jsp").forward(request, response);
		return "input"; // input.jsp로 포워딩
	}
	
}






