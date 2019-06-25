package com.joo.pharmhome.blog.dao;

import java.util.List;

import com.joo.pharmhome.blog.dto.BlogQADto;

public interface BlogQADao {
	public List<BlogQADto> getList(BlogQADto qadto);
	public void insertContents(BlogQADto qadto);
	public BlogQADto getData(int qanum);
	public void updateContents(BlogQADto qadto);
	public void deleteContents(int qanum);
}
