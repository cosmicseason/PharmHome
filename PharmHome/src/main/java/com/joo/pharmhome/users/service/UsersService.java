package com.joo.pharmhome.users.service;

import org.springframework.web.servlet.ModelAndView;

import com.joo.pharmhome.users.dto.UsersDto;

public interface UsersService {
	//DB에 회원정보를 저장하는 비즈니스 로직
	public void addUser(ModelAndView mView, UsersDto dto);
}
