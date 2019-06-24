package com.joo.pharmhome.blog.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.joo.pharmhome.blog.dto.BlogQADto;
import com.joo.pharmhome.blog.service.BlogQAService;

@Controller
public class BlogQAController {
	@Autowired
	private BlogQAService qaservice;
	
	@RequestMapping("/blog/blogQaList")
	public ModelAndView blogQaList(HttpServletRequest request ){
		
		qaservice.getList(request);
		
		return new ModelAndView("blog/QA/list");
		
	}
	
	@RequestMapping("/blog/qaInsertform")
	public ModelAndView authBlogQaInsertform(HttpServletRequest request){
		return new ModelAndView("blog/QA/insertform");
	}
	
	@RequestMapping(value="/blog/qaInsert", method=RequestMethod.POST)
	public ModelAndView authBlogQaInsert(HttpServletRequest request,
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
	
	@RequestMapping("/blog/qaDetail")
	public ModelAndView authBlogQaDetail(HttpServletRequest request, @RequestParam int qanum, ModelAndView mView){
	
		qaservice.getDetail(qanum, mView);
		mView.setViewName("blog/QA/detail");
		return mView;
	}
	
	@RequestMapping("blog/qaUpdateform")
	public ModelAndView authBlogQaUpdateform(HttpServletRequest request, @RequestParam int qanum, ModelAndView mView){
		
		qaservice.getDetail(qanum, mView);
		mView.setViewName("blog/QA/updateform");
		
		return mView;
	}
	
	@RequestMapping(value="blog/qaUpdate", method=RequestMethod.POST)
	public ModelAndView authBlogQaUpdate(HttpServletRequest request, @ModelAttribute BlogQADto qadto, ModelAndView mView){
		
		qaservice.updateQaContents(qadto, request);
		mView.setViewName("redirect:/blog/blogQaList.do");
		
		return mView;
	}
}
