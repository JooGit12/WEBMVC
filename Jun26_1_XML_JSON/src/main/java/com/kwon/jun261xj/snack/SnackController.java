package com.kwon.jun261xj.snack;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SnackController {

	@Autowired
	private SnackDAO sDAO;

	@RequestMapping(value = "/snack.get", method = RequestMethod.GET, 
			produces = "application/xml; charset=utf-8")
	public @ResponseBody Snacks snackGet(HttpServletRequest req) {
		Snacks snacks = sDAO.get2();
		return snacks;
	}
}




