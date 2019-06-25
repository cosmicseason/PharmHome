package com.joo.pharmhome.blog.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.joo.pharmhome.blog.dto.BlogQADto;

@Repository
public class BlogQADaoImpl implements BlogQADao {
	@Autowired
	private SqlSession session;

	@Override
	public List<BlogQADto> getList(BlogQADto qadto) {
		
		List<BlogQADto> qalist = session.selectList("blogQA.getList", qadto);
		
		return qalist;
	}

	@Override
	public void insertContents(BlogQADto qadto) {
		
		session.insert("blogQA.insertContents", qadto);
		
	}

	@Override
	public BlogQADto getData(int qanum) {
		
		return session.selectOne("blogQA.getData", qanum) ;
	}

	@Override
	public void updateContents(BlogQADto qadto) {
		session.update("blogQA.updateContents", qadto);
		
	}

	@Override
	public void deleteContents(int qanum) {
		session.delete("blogQA.deleteContents", qanum);
		
	}
}
