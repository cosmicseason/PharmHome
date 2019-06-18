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
}
