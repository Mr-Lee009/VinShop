package com.ABCShop.api;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ABCShop.entities.PaginationResult;
import com.ABCShop.entities.Test;
import com.ABCShop.service.TestService;

@RestController
@RequestMapping(value = "/api/test")
public class TestAPI {
	@Autowired
	TestService testService;
	
	@RequestMapping(value = "/page/{page}/maxResult/{maxResult}/maxNavigationPage/{maxNavigationPage}",method = RequestMethod.GET)
	public PaginationResult<Test> getall(HttpServletRequest request, @PathVariable("page") int page,
			@PathVariable("maxResult") int maxResult, @PathVariable("maxNavigationPage") int maxNavigationPage) 
	{
		PaginationResult<Test> result = testService.getAllByPage(page, maxResult, maxNavigationPage);
		return result;
	}
}
