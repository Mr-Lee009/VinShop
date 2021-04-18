package com.ABCShop.controller.admin;

import java.io.IOException;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ABCShop.util.SendLogUitl;

@Controller("TestController")
@RequestMapping(value = "/admin")
public class TestController {
	
	private static Logger logger = Logger.getLogger(TestController.class);
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public ModelAndView homeTest() {
		String method = "homeTest";
		SendLogUitl.sendLogTelegram("menthod="+method+ "; mesage="+"ban da vao trang homeTest!");
		logger.info("ban da vao trang homeTest!");
		return new ModelAndView("admin/test");
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView homeUser() {
		String method = "homeTest";
		SendLogUitl.sendLogTelegram("menthod="+method+ "; mesage="+"ban da vao trang home!");
		SendLogUitl.sendLogTelegram("ban da vao trang hom!");
		logger.info("ban da vao trang hom!");
		return new ModelAndView("admin/home");
	}

	@RequestMapping(value = "/testLog", method = RequestMethod.GET)
	public ModelAndView testLog() {
		SendLogUitl.sendLogTelegram("day la message thu nhat!");
		return new ModelAndView("admin/home");
	}

}
