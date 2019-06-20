package com.joo.pharmhome.blog.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.joo.pharmhome.blog.dto.BlogQADto;
import com.joo.pharmhome.blog.service.BlogQAService;

@Controller
public class BlogQAController {
	@Autowired
	private BlogQAService qaservice;
	
	@RequestMapping("/blog/blogQaList")
	public String blogQaList(HttpServletRequest request ){
		
		qaservice.getList(request);
		
		return "blog/QA/list";
		
	}
	
	@RequestMapping("/blog/qaInsertform")
	public String blogQaInsertform(){
		return "blog/QA/insertform";
	}
	
	@RequestMapping(value="/blog/qaInsert", method=RequestMethod.POST)
	public ModelAndView blogQaInsert(HttpServletRequest request, HttpSession session,
			ModelAndView mView ,@ModelAttribute BlogQADto qadto){
		//세션에 있는 글작성자의 아이디
		String qaWriter=(String)request.getSession().getAttribute("userId");
		//BlogQADto 객체에 담고
		qadto.setQaWriter(qaWriter);
		//서비스를 이용해서 DB에 저장
		qaservice.saveQaContents(qadto);
		//글 목록 보기로 리다일렉트 이동
		mView.setViewName("redirect:/blog/blogQaList.do");
		return mView;
	}
}
