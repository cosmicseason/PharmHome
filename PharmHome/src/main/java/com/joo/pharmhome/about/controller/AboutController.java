package com.joo.pharmhome.about.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AboutController {

	@RequestMapping("/about/about")
	public String aboutIndex(){
		return "about/about";
	}
	
	@RequestMapping("/about/vision")
	public String aboutVision(){
		return "about/vision";
	}
	

}
