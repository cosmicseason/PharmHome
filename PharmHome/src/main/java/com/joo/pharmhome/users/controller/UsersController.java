package com.joo.pharmhome.users.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.joo.pharmhome.users.dto.UsersDto;
import com.joo.pharmhome.users.service.UsersService;

@Controller
public class UsersController {

	@Autowired
	private UsersService service;
	
	@RequestMapping("/users/loginform")
	public String usersLoginform(HttpServletRequest request){
		
		String url=request.getParameter("logformurl");
		//목적지 정보가 없을 경우 인덱스 페이지로 갈수 있도록
		if(url == null){
			String cPath= request.getContextPath();
			url=cPath+"/";
		}
		
		System.out.println(url);
		
		request.setAttribute("url", url);
		
		return "users/loginform";
		
	}

	@RequestMapping(value="/users/login", method=RequestMethod.POST)
	public ModelAndView usersLogin(HttpServletRequest request, HttpSession session, @ModelAttribute UsersDto dto, ModelAndView mView){
		
		
	
		mView.setViewName("");
		
		return mView;
	}
	
	@RequestMapping("/users/signupform")
	public String usersSignupform(){
		return "users/signupform";
	}
	
	@RequestMapping(value="/users/signup", method=RequestMethod.POST)
	public ModelAndView usersSignup(ModelAndView mView, @ModelAttribute UsersDto dto){
		//폼 내용 : dto에 들어있음
		//회원가입 비즈니스 로직
		service.addUser(mView, dto);
		//view page 정보를 ModelAndView 객체에 담음
		mView.setViewName("users/greeting");
		
		//응답하기
		return mView;
	}
		
	

}
