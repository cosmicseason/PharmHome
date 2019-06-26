package com.joo.pharmhome.qa.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.joo.pharmhome.qa.dto.QaDto;

public interface QaService {
	public void getList(HttpServletRequest request);
	public void saveQaContents(QaDto qadto);
	public void getDetail(int num, ModelAndView mView);
	public void updateQaContents(QaDto qadto, HttpServletRequest request);
	public void deleteQaContents(int num);
}
