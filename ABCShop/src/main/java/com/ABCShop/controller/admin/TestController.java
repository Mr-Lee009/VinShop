package com.ABCShop.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("TestController")
@RequestMapping(value = "/admin")
public class TestController {
	@RequestMapping(value = "/test",method = RequestMethod.GET)
	public ModelAndView homeTest() {
		return new ModelAndView("admin/test");
	}
	@RequestMapping(value = "/home",method = RequestMethod.GET)
	public ModelAndView homeUser() {
		return new ModelAndView("admin/home");
	}
}
