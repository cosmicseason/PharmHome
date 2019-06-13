package com.joo.pharmhome.users.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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
		//dto에 저장된 비밀번호를 암호화 해서
		String plainText=dto.getPwd();
		BCryptPasswordEncoder encoder=new BCryptPasswordEncoder();
		//암호화된 비밀번호를 dto에 넣고
		dto.setPwd(encoder.encode(plainText));
		//DB에 저장한다.
		usersDao.insertUser(dto);
		//가입된 아이디를 request에 담기
		mView.addObject("userId", dto.getId());
	}

	
}
