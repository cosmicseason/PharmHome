package com.joo.pharmhome.blog.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.joo.pharmhome.blog.service.BlogQAService;

@Controller
public class BlogQAController {
	@Autowired
	private BlogQAService qaservice;
	
	@RequestMapping("/blog/blogQAList")
	public String blogQAList(HttpServletRequest request ){
		
		qaservice.getList(request);
		
		return "blog/QA/list";
		
	}
}
