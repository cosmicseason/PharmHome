package com.joo.pharmhome.users.dao;

import com.joo.pharmhome.users.dto.UsersDto;

public interface UsersDao {
	//DB에 회원 정보 저장
	public void insertUser(UsersDto dto);
}
