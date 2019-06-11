package com.joo.pharmhome.users.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.joo.pharmhome.users.dto.UsersDto;

@Repository
public class UsersDaoImpl implements UsersDao {
	
	@Autowired
	private SqlSession session;
	
	//DB에 회원 정보 저장
	@Override
	public void insertUser(UsersDto dto) {
		session.insert("users.insertUser", dto);
		
	}

}
