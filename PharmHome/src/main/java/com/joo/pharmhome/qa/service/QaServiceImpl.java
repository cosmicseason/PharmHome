package com.joo.pharmhome.qa.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.joo.pharmhome.qa.dao.QaDao;
import com.joo.pharmhome.qa.dto.QaDto;

@Service
public class QaServiceImpl implements QaService {
	@Autowired
	private QaDao qadao;
	
	/*페이징을 위한 필드*/
		//한 페이지에 나타낼 row 의 갯수 
	static final int PAGE_ROW_COUNT=5;
		//하단 디스플레이 페이지 갯수 
	static final int PAGE_DISPLAY_COUNT=5;
	
	@Override
	public void getList(HttpServletRequest request) {
		//모델을 담을 qadto 객체 생성
		QaDto qadto = new QaDto();
		
		//보여줄 페이지의 번호
		int pageNum=1;
		//보여줄 페이지의 번호가 파라미터로 전달되는지 읽어오기
		String strPageNum=request.getParameter("pageNum");
		if(strPageNum != null){//페이지 번호가 파라미터로 넘어온다면
			//페이지 번호를 설정한다.
			pageNum=Integer.parseInt(strPageNum);
		}
		//보여줄 페이지 데이터의 시작 ResultSet row 번호
		int startRowNum = 1+(pageNum-1)*PAGE_ROW_COUNT;
		//보여줄 페이지 데이터의 끝 ResultSet row 번호
		int endRowNum=pageNum*PAGE_ROW_COUNT;
		
		//전체 row의 갯수를 읽어온다.
		int totalRow=qadao.getCountContents();
		//전체 페이지의 갯수 구하기
		int totalPageCount=(int)Math.ceil(totalRow/(double)PAGE_ROW_COUNT);
		//시작 페이지 번호
		int startPageNum=1+((pageNum-1)/PAGE_DISPLAY_COUNT)*PAGE_DISPLAY_COUNT;
		//끝 페이지 번호
		int endPageNum=startPageNum+PAGE_DISPLAY_COUNT-1;
		//끝 페이지 번호가 잘못된 갑이라면
		if(totalPageCount < endPageNum){
			endPageNum=totalPageCount; //보
		}
		//startRowNum 과 endRowNum 을 qaDto객체에 담고
		qadto.setStartRowNum(startRowNum);
		qadto.setEndRowNum(endRowNum);
		
		//startRowNum 과 endRowNum에 해당하는 카페글 목록을 select래 온다.
		List<QaDto> qalist=qadao.getList(qadto);
		
		//view 페이지에서 필요한 값을 request에 담고
		request.setAttribute("qalist", qalist);
		request.setAttribute("startPageNum", startPageNum);
		request.setAttribute("endPageNum", endPageNum);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("totalPageCount", totalPageCount);
		//전체 글의 갯수도 request 에 담는다.
		request.setAttribute("totalRow", totalRow);
	}

	@Override
	public void saveQaContents(QaDto qadto) {
		//DB에 입력받은 정보 저장
		qadao.insertContents(qadto);	
	}

	@Override
	public void getDetail(int num, ModelAndView mView) {
		//선택한 글 정보를 저장할 BlogQADto 객체 생성
		QaDto qadto = new QaDto();
		//조회수 1 증가 시키기
		qadao.addViewCount(num);
		//글 정보를 얻어와서
		qadto = qadao.getData(num);
		//ModelAndView에 글 정보를 담는다.
		mView.addObject("qadto", qadto);		
	}

	@Override
	public void updateQaContents(QaDto qadto, HttpServletRequest request) {
		int  num=Integer.parseInt(request.getParameter("num"));
		qadto.setQaNum(num);
		qadao.updateContents(qadto);	
	}

	@Override
	public void deleteQaContents(int num) {
		qadao.deleteContents(num);	
	}

}
