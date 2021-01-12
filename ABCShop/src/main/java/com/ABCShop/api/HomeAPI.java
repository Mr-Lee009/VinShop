package com.ABCShop.api;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ABCShop.entities.PaginationResult;
import com.ABCShop.entities.User;
import com.ABCShop.service.UserService;

@RestController("homeAPI")
@RequestMapping(value = "/api")
public class HomeAPI {
	@Autowired
	UserService userService;
	

	@RequestMapping(value = "/home/page/{page}/maxResult/{maxResult}/maxNavigationPage/{maxNavigationPage}", method = RequestMethod.GET)
	public PaginationResult<User> home(HttpServletRequest request, @PathVariable("page") int page,
			@PathVariable("maxResult") int maxResult, @PathVariable("maxNavigationPage") int maxNavigationPage) {
		PaginationResult<User> result = userService.getAllByPage(page, maxResult, maxNavigationPage);
		return result;
	}

	@RequestMapping(value = "/home/search/{page}/maxResult/{maxResult}/maxNavigationPage/{maxNavigationPage}/key/{key}/value/{value}", method = RequestMethod.GET)
	public PaginationResult<User> search(HttpServletRequest request, @PathVariable("page") int page,
			@PathVariable("maxResult") int maxResult, @PathVariable("maxNavigationPage") int maxNavigationPage,
			@PathVariable("key") String key, @PathVariable("value") String value) {
		PaginationResult<User> result = userService.searchBy(page, maxResult, maxNavigationPage, key, value);
		return result;
	}

	@RequestMapping(value = "/home/user", method = RequestMethod.POST)
	public String addUser(HttpServletRequest request, @RequestBody User user) {
		boolean result = userService.add(user);
		if (result) {
			return "SUCCESS: them nguoi dung thanh cong";
		}
		return "ERROR: them nguoi dung that bai";
	}
}
