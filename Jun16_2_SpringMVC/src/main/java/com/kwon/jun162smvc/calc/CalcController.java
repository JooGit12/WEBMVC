package com.kwon.jun162smvc.calc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CalcController {
	// servlet-context.xml이 이미 aac방식으로 불러와지는중
	// 거기 등록해놓은 그 하나의 Calculator객체와 자동연결
	@Autowired
	private Calculator c;

	@RequestMapping(value = "xy.calculate", method = RequestMethod.GET)
	public String xyCalculate(XY xy, HttpServletRequest req) {
		c.calculate(xy, req); 
		return "output";
	}
// 	1) 기존 JSP Model 2 스타일
//	@RequestMapping(value = "xy.calculate", method = RequestMethod.GET)
//	public String xyCalculate(HttpServletRequest req, HttpServletResponse res) {
//		String xxx = req.getParameter("xx");
//		int xxxx = Integer.parseInt(xxx);
//		int yyyy = Integer.parseInt(req.getParameter("yy"));
//		System.out.println(xxxx);
//		System.out.println(yyyy);
//		return "output";
//	}

// 	2) Spring st.
//	@RequestMapping(value = "xy.calculate", method = RequestMethod.GET)
//	public String xyCalculate(@RequestParam(value = "xx") int xxxx, @RequestParam(value = "yy") int yyyy) {
//		System.out.println(xxxx);
//		System.out.println(yyyy);
//		return "output";
//	}
	
// 	3) Spring st.
//	@RequestMapping(value = "xy.calculate", method = RequestMethod.GET)
//	public String xyCalculate(XY xy) {
//		System.out.println(xy.getXx());
//		System.out.println(xy.getYy());
//		return "output";
//	}

	
	
}



