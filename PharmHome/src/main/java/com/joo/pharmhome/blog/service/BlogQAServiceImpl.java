package com.joo.pharmhome.blog.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

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

	@Override
	public void saveQaContents(BlogQADto qadto) {
			
		//DB에 입력받은 정보 저장
		qadao.insertContents(qadto);

	}

	@Override
	public void getDetail(int qanum, ModelAndView mView) { 
		//선택한 글 정보를 저장할 BlogQADto 객체 생성
		BlogQADto qadto = new BlogQADto();
		//글 정보를 얻어와서
		qadto = qadao.getData(qanum);
		//ModelAndView에 글 정보를 담는다.
		mView.addObject("qadto", qadto);		
	}

	@Override
	public void updateQaContents(BlogQADto qadto, HttpServletRequest request) {
		int  qanum=Integer.parseInt(request.getParameter("num"));
		qadto.setQaNum(qanum);
		qadao.updateContents(qadto);
		
	}
	
	
	
	
}
