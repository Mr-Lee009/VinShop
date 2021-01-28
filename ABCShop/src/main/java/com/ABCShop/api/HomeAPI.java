package com.ABCShop.api;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ABCShop.dto.Message;
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

	@RequestMapping(value = "/home/search/{page}/maxResult/{maxResult}/maxNavigationPage/"
			+ "{maxNavigationPage}/key/{key}/value/{value}", method = RequestMethod.GET)
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

	@RequestMapping(value = "/home/user/{id}", method = RequestMethod.DELETE)
	public Message<User> deleteUser(@PathVariable("id") int id) {
		Message<User> msg = new Message<User>();
		User User = userService.getById(id);
		msg.setDescription(null);
		if (User != null) {
			if (userService.delete(id)) {
				msg.setErrorCode("0");
				msg.setDescription("SUCCESS: xoa nguoi dung thanh cong user: " + User.getUsername());
				return msg;
			}
			msg.setErrorCode("1");
			msg.setDescription("ERROR: xoa nguoi dung that bai");
			return msg;
		} else {
			msg.setErrorCode("1");
			msg.setDescription("nguoi dung không tồn tại");
			return msg;
		}
	}

	// code moi
	@RequestMapping(value = "/home/user/{id}", method = RequestMethod.GET)
	public Message<User> getUser(@PathVariable("id") int id) {
		Message<User> msg = new Message<User>();
		User User = userService.getById(id);
		msg.setDescription(null);
		if (User != null) {
				msg.setErrorCode("0");
				msg.setDescription("SUCCESS: "+User.getUsername());
				msg.setResult(User);
				return msg;
		} 
		else {
			msg.setErrorCode("1");
			msg.setDescription("nguoi dung không tồn tại");
			return msg;
		}
	}
}
