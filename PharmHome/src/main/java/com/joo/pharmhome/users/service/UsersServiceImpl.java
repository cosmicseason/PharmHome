package com.joo.pharmhome.users.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.joo.pharmhome.users.dao.UsersDao;
import com.joo.pharmhome.users.dto.UsersDto;

@Service
public class UsersServiceImpl implements UsersService {

	@Autowired
	private UsersDao usersDao;
	
	//DB에 회원정보를 저장하는 비즈니스 로직
	@Override
	public void addUser(ModelAndView mView, UsersDto dto) {
		
		
	}

	
}
