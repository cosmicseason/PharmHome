package com.joo.pharmhome.qa.dto;

public class QaCommentDto {
	private int qacmdNum;
	private String qacmdWriter;
	private String qacmdContent;
	private String qacmdTarget_id; //댓글 대상자의 아이디
	private int qacmdRef_group; //댓글의 그룹 번호 (원글의 글번호)
	private int qacmdComment_group; //댓글 내에서의 그룹번호
	private String qacmdRegdate;
	private String qacmdProfile; //프로 파일 경로를 담을 필드
	
	//생성자
	public QaCommentDto(){}

	public QaCommentDto(int qacmdNum, String qacmdWriter, String qacmdContent, String qacmdTarget_id,
			int qacmdRef_group, int qacmdComment_group, String qacmdRegdate, String qacmdProfile) {
		this.qacmdNum = qacmdNum;
		this.qacmdWriter = qacmdWriter;
		this.qacmdContent = qacmdContent;
		this.qacmdTarget_id = qacmdTarget_id;
		this.qacmdRef_group = qacmdRef_group;
		this.qacmdComment_group = qacmdComment_group;
		this.qacmdRegdate = qacmdRegdate;
		this.qacmdProfile = qacmdProfile;
	}

	public int getQacmdNum() {
		return qacmdNum;
	}

	public void setQacmdNum(int qacmdNum) {
		this.qacmdNum = qacmdNum;
	}

	public String getQacmdWriter() {
		return qacmdWriter;
	}

	public void setQacmdWriter(String qacmdWriter) {
		this.qacmdWriter = qacmdWriter;
	}

	public String getQacmdContent() {
		return qacmdContent;
	}

	public void setQacmdContent(String qacmdContent) {
		this.qacmdContent = qacmdContent;
	}

	public String getQacmdTarget_id() {
		return qacmdTarget_id;
	}

	public void setQacmdTarget_id(String qacmdTarget_id) {
		this.qacmdTarget_id = qacmdTarget_id;
	}

	public int getQacmdRef_group() {
		return qacmdRef_group;
	}

	public void setQacmdRef_group(int qacmdRef_group) {
		this.qacmdRef_group = qacmdRef_group;
	}

	public int getQacmdComment_group() {
		return qacmdComment_group;
	}

	public void setQacmdComment_group(int qacmdComment_group) {
		this.qacmdComment_group = qacmdComment_group;
	}

	public String getQacmdRegdate() {
		return qacmdRegdate;
	}

	public void setQacmdRegdate(String qacmdRegdate) {
		this.qacmdRegdate = qacmdRegdate;
	}

	public String getQacmdProfile() {
		return qacmdProfile;
	}

	public void setQacmdProfile(String qacmdProfile) {
		this.qacmdProfile = qacmdProfile;
	}
	
	
	
}
