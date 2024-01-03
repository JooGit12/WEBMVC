package com.kwon.jul072rac.coffee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CoffeeController {

	@Autowired
	private CoffeeDAO cDAO;

	@RequestMapping(value = "/coffee.get", method = RequestMethod.GET, 
			produces = "application/json; charset=utf-8")
	public @ResponseBody Coffees coffeeGet() {
		return cDAO.get();
	}
	
	@RequestMapping(value = "/coffee.reg", method = RequestMethod.GET, 
			produces = "application/json; charset=utf-8")
	public @ResponseBody String coffeeReg(Coffee c) {
		return cDAO.reg(c);
	}
	
}
