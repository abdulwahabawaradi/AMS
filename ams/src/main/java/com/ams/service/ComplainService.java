package com.ams.service;

import java.util.List;

import com.ams.beans.ComplainBean;

public interface ComplainService {
	
	public void add(ComplainBean complianBean);

	public void update(ComplainBean complianBean);

	public void delete(String complainId);

	public List<ComplainBean> findAll();

	public ComplainBean findById(String complainId);


}
