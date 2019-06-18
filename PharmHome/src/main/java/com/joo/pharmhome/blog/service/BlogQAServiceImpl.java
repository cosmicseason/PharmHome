package com.joo.pharmhome.blog.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.joo.pharmhome.blog.dao.BlogQADao;
import com.joo.pharmhome.blog.dto.BlogQADto;

@Service
public class BlogQAServiceImpl implements BlogQAService {
	@Autowired
	private BlogQADao qadao;
	//한 페이지에 나타낼 row 의 갯수 
	static final int PAGE_ROW_COUNT=5;
	//하단 디스플레이 페이지 갯수 
	static final int PAGE_DISPLAY_COUNT=5;

	@Override
	public void getList(HttpServletRequest request) {
		
		//모델을 담을 qadto 객체 생성
		BlogQADto qadto = new BlogQADto();
		//DB에서 모델 읽어오기
		List<BlogQADto> qalist=qadao.getList(qadto);
		//view 페이지에서 필요한 값을 request에 담음
		request.setAttribute("qalist", qalist);
			
	}
	
	
	
	
}
