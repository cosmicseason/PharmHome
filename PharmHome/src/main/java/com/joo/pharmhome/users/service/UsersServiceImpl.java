package com.joo.pharmhome.users.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
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
		String plainText=dto.getUserPwd();
		BCryptPasswordEncoder encoder=new BCryptPasswordEncoder();
		//암호화된 비밀번호를 dto에 넣고
		dto.setUserPwd(encoder.encode(plainText));
		//DB에 저장한다.
		usersDao.insertUser(dto);
		//가입된 아이디를 ModelAndView 객체에 담기
		mView.addObject("userId", dto.getUserId());
	}

	@Override
	public void validUser(HttpSession session, UsersDto dto, ModelAndView mView) {
		//입력된 아이디를 변수에 담는다.
		String inputId = dto.getUserId();
		
		//입력된 비밀번호를 변수에 담는다.
		String inputPwd = dto.getUserPwd();
		System.out.println(inputPwd);
		//아이디 비밀번호가 유효한지 여부
		boolean isValid=false;
		
		//입력받은 id를 이용하여 DB에 저장된 회원정보를 읽어온다.
		UsersDto usersDto =usersDao.getData(inputId);
		//DB에 저장된 비밀번호를 변수에 담는다.
		
		String pwdHash = usersDto.getUserPwd();
		System.out.println(pwdHash);
		
		if(pwdHash!= null){//입력된 패스워드가 DB에 존재 하면
			//비밀번호가 일치하는지 여부를 isValid 에 대입한다.
			isValid=BCrypt.checkpw(inputPwd, pwdHash);
			System.out.println(isValid);
		}
		
		if(isValid){//아이디 비밀번호가 일치하면
			//세션영역에 아이디를 저장하고
			session.setAttribute("userId", inputId);
			//로그인 성공 여부를 ModelAndView 객체에 담는다.
			mView.addObject("isSuccess", true);
		}else{//아이디 혹은 비밀번호가 틀린경우
			mView.addObject("isSuccess", false);
		}
		
	}

	
}
