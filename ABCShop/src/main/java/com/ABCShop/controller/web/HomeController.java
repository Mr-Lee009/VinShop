package com.ABCShop.controller.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ABCShop.entities.User;
import com.ABCShop.service.UserService;

@Controller(value = "HomeWebController")
@RequestMapping(value = "/web")
public class HomeController {
	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/home",method = RequestMethod.GET)
	public ModelAndView home(HttpServletRequest request ) {
		List<User> lst = userService.getAll();
		request.setAttribute("listUser", lst);
		return new ModelAndView("web/home");
	}
}
