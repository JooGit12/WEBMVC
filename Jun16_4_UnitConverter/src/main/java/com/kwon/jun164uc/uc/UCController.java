package com.kwon.jun164uc.uc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UCController {
	
	@Autowired
	private UnitConverter uc;
	
	@RequestMapping(value = "/unit.convert", method = RequestMethod.GET)
	public String unitConvert(UCResult ucr, HttpServletRequest req) {
		uc.convert(ucr, req);
		return "output";
	}
}










