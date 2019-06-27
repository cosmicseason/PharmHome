package com.joo.pharmhome.qa.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.joo.pharmhome.qa.dto.QaDto;

@Repository
public class QaDaoImpl implements QaDao {
	@Autowired
	private SqlSession session;
	
	@Override
	public List<QaDto> getList(QaDto qadto) {
		
		List<QaDto> qalist = session.selectList("qa.getList", qadto);	
		
		return qalist;
	}

	@Override
	public void insertContents(QaDto qadto) {
		session.insert("qa.insertContents", qadto);		
	}

	@Override
	public QaDto getData(int num) {
		return session.selectOne("qa.getData", num) ;
	}

	@Override
	public void updateContents(QaDto qadto) {
		session.update("qa.updateContents", qadto);		
	}

	@Override
	public void deleteContents(int num) {
		session.delete("qa.deleteContents", num);
	}

	@Override
	public int getCountContents() {
		return session.selectOne("qa.getCount");
	}

	@Override
	public void addViewCount(int num) {
		session.update("qa.addViewCount",num);
	}

}
