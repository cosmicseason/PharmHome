package com.joo.pharmhome.qa.dao;

import java.util.List;

import com.joo.pharmhome.qa.dto.QaDto;

public interface QaDao {
	public List<QaDto> getList(QaDto qadto);
	public void insertContents(QaDto qadto);
	public QaDto getData(int num);
	public void updateContents(QaDto qadto);
	public void deleteContents(int num);
	public int getCountContents();
}
