package com.ams.service;

import java.util.List;

import com.ams.beans.SocietyBean;

public interface SocietyService {
	
	public void add(SocietyBean societyBean);

	public void update(SocietyBean societyBean);

	public void delete(String societyId);

	public List<SocietyBean> findAll();

	public SocietyBean  findById(String societyId);


}
