package com.joo.pharmhome.blog.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.joo.pharmhome.blog.dto.BlogQADto;

public interface BlogQAService {
	public void getList(HttpServletRequest request);
	public void saveQaContents(BlogQADto qadto);
	public void getDetail(int qanum, ModelAndView mView);
}
