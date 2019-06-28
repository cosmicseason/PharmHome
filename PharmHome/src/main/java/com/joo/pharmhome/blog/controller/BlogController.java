package com.joo.pharmhome.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BlogController {
	
	@RequestMapping("/blog/list")
	public String blogList(){
		return "blog/bloglist";
	}
	

}
