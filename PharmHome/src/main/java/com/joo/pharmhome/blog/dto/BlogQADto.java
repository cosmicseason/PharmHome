package com.joo.pharmhome.blog.dto;

public class BlogQADto {
	private int qaNum;
	private String qaWriter;
	private String qaTitle;
	private String qaContents;
	private String qaRegdate;
	private int viewCount;
	
	//페이징 처리를 위한 필드
	private int startRowNum;
	private int endRowNum;
	//이전글, 다음글의 글번호를 담을 필드
	private int prevNum;
	private int nextNum;
	//생성자
	public BlogQADto(){}
	public BlogQADto(int qaNum, String qaWriter, String qaTitle, String qaContents, String qaRegdate, int viewCount,
			int startRowNum, int endRowNum, int prevNum, int nextNum) {
		super();
		this.qaNum = qaNum;
		this.qaWriter = qaWriter;
		this.qaTitle = qaTitle;
		this.qaContents = qaContents;
		this.qaRegdate = qaRegdate;
		this.viewCount = viewCount;
		this.startRowNum = startRowNum;
		this.endRowNum = endRowNum;
		this.prevNum = prevNum;
		this.nextNum = nextNum;
	}
	public int getQaNum() {
		return qaNum;
	}
	public void setQaNum(int qaNum) {
		this.qaNum = qaNum;
	}
	public String getQaWriter() {
		return qaWriter;
	}
	public void setQaWriter(String qaWriter) {
		this.qaWriter = qaWriter;
	}
	public String getQaTitle() {
		return qaTitle;
	}
	public void setQaTitle(String qaTitle) {
		this.qaTitle = qaTitle;
	}
	public String getQaContents() {
		return qaContents;
	}
	public void setQaContents(String qaContents) {
		this.qaContents = qaContents;
	}
	public String getQaRegdate() {
		return qaRegdate;
	}
	public void setQaRegdate(String qaRegdate) {
		this.qaRegdate = qaRegdate;
	}
	public int getViewCount() {
		return viewCount;
	}
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	public int getStartRowNum() {
		return startRowNum;
	}
	public void setStartRowNum(int startRowNum) {
		this.startRowNum = startRowNum;
	}
	public int getEndRowNum() {
		return endRowNum;
	}
	public void setEndRowNum(int endRowNum) {
		this.endRowNum = endRowNum;
	}
	public int getPrevNum() {
		return prevNum;
	}
	public void setPrevNum(int prevNum) {
		this.prevNum = prevNum;
	}
	public int getNextNum() {
		return nextNum;
	}
	public void setNextNum(int nextNum) {
		this.nextNum = nextNum;
	}
	
}
