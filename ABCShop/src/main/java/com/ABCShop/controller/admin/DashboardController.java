package com.ABCShop.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("DashboardController")
@RequestMapping("/admin/dashboard")
public class DashboardController {
	@RequestMapping(value = "/" , method = RequestMethod.GET)
	public ModelAndView Dashboard() {
		return new ModelAndView("admin/dashboard");
	}
}
