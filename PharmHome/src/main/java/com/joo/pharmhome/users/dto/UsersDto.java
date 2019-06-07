package com.joo.pharmhome.users.dto;

public class UsersDto {
	private int user_num; // 사용자 고유 번호
	private String id; // 사용자 아이디
	private String pwd;// 사용자 패스워드
	private String addr;// 사용자 주소
	private String email;// 사용자 이메일
	private String regdate;// 사용자 가입일
	
	public UsersDto(){};
	
	public UsersDto(int user_num, String id, String pwd, String addr, String email, String regdate) {
		super();
		this.user_num = user_num;
		this.id = id;
		this.pwd = pwd;
		this.addr = addr;
		this.email = email;
		this.regdate = regdate;
	}

	public int getUser_num() {
		return user_num;
	}

	public void setUser_num(int user_num) {
		this.user_num = user_num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

}
