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
		
		String url=request.getParameter("url");
		//목적지 정보가 없을 경우 인덱스 페이지로 갈수 있도록
		if(url == null){
			String cPath= request.getContextPath();
			url=cPath+"/";
		}
		
		request.setAttribute("url", url);
		
		return "users/loginform";
		
	}

	@RequestMapping(value="/users/login", method=RequestMethod.POST)

	public ModelAndView usersLogin(HttpServletRequest request, HttpSession session, @ModelAttribute UsersDto dto, ModelAndView mView){
		
		String url=request.getParameter("url");
		//입력된 아이디를 변수에 담는다.
		String id = dto.getUserId();
		//입력된 비밀번호를 변수에 담는다.
		String pwd = dto.getUserPwd();
		
		System.out.println(id);
		System.out.println(pwd);
		
		if((id!="")&&(pwd!="")){
			//UserService를 이용해서 로그인 관련 비즈니스 로직 처리
			service.validUser(session, dto, mView);
						
			//목적지 정보가 없을 경우 인덱스 페이지로 갈수 있도록
			if(url == null){
				String cPath= request.getContextPath();
				url=cPath+"/";
			}
					
		}else{
			System.out.println("id, pwd is null!");
			mView.addObject("isSuccess", false);
		}
		
		mView.addObject("url", url);
		mView.setViewName("users/login");
		
		return mView;
	}
	
	@RequestMapping("/users/logout")
	public String usersLogout(HttpSession session){
		//세션 초기화
		session.invalidate();
		return "redirect:/home.do";
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
