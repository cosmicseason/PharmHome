package com.joo.pharmhome.users.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.joo.pharmhome.users.dto.UsersDto;

public interface UsersService {
	//DB에 회원정보를 저장하는 비즈니스 로직
	public void addUser(ModelAndView mView, UsersDto dto);
	//입력받은 회원 아이디와 비밀번호가 유효한지 여부
	public void validUser(HttpSession session, UsersDto dto, ModelAndView mView);
}
