package com.joo.pharmhome.users.dto;

public class UsersDto {
	private int userNum; // 사용자 고유 번호
	private String userId; // 사용자 아이디
	private String userPwd;// 사용자 패스워드
	private String userAddr;// 사용자 주소
	private String userEmail;// 사용자 이메일
	private String userRegdate;// 사용자 가입일
	
	public UsersDto(){}

	public UsersDto(int userNum, String userId, String userPwd, String userAddr, String userEmail, String userRegdate) {
		super();
		this.userNum = userNum;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userAddr = userAddr;
		this.userEmail = userEmail;
		this.userRegdate = userRegdate;
	}

	public int getUserNum() {
		return userNum;
	}

	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserAddr() {
		return userAddr;
	}

	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserRegdate() {
		return userRegdate;
	}

	public void setUserRegdate(String userRegdate) {
		this.userRegdate = userRegdate;
	};
	
}
