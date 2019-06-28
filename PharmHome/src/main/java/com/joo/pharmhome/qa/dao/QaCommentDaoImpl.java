package com.joo.pharmhome.qa.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QaCommentDaoImpl implements QaCommentDao {
	
	@Autowired
	private SqlSession session;
}
