package com.joo.pharmhome.qa.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.joo.pharmhome.qa.dto.QaDto;
import com.joo.pharmhome.qa.service.QaService;

@Controller
public class QaController {
	@Autowired
	private QaService qaservice;
	
	@RequestMapping("/qa/list")
	public ModelAndView blogQaList(HttpServletRequest request ){
		
		qaservice.getList(request);
		return new ModelAndView("qa/list");		
	}
	
	@RequestMapping("/qa/insertform")
	public ModelAndView authInsertform(HttpServletRequest request){
		
		return new ModelAndView("qa/insertform");
	}
	
	@RequestMapping(value="/qa/insert", method=RequestMethod.POST)
	public ModelAndView authInsert(HttpServletRequest request,
			ModelAndView mView ,@ModelAttribute QaDto qadto){
		
		//세션에 있는 글작성자의 아이디
		String qaWriter=(String)request.getSession().getAttribute("userId");
		//BlogQADto 객체에 담고
		qadto.setQaWriter(qaWriter);
		//서비스를 이용해서 DB에 저장
		qaservice.saveQaContents(qadto);
		//글 목록 보기로 리다일렉트 이동
		mView.setViewName("redirect:/qa/list.do");
		return mView;
	}
	
	@RequestMapping("/qa/detail")
	public ModelAndView authDetail(HttpServletRequest request, @RequestParam int num, ModelAndView mView){
	
		qaservice.getDetail(num, mView);
		
		mView.setViewName("qa/detail");
		return mView;
	}
	
	@RequestMapping("qa/updateform")
	public ModelAndView authUpdateform(HttpServletRequest request, @RequestParam int num, ModelAndView mView){
		
		qaservice.getDetail(num, mView);
		
		mView.setViewName("qa/updateform");
		return mView;
	}
	
	@RequestMapping(value="qa/update", method=RequestMethod.POST)
	public ModelAndView authUpdate(HttpServletRequest request, @ModelAttribute QaDto qadto, ModelAndView mView){
		
		qaservice.updateQaContents(qadto, request);
		
		mView.setViewName("redirect:/qa/list.do");
		return mView;
	}
	
	@RequestMapping("/qa/delete")
	public ModelAndView authDelete(HttpServletRequest request, @RequestParam int num){
		
		qaservice.deleteQaContents(num);
		return new ModelAndView("redirect:/qa/list.do");
	}
}
