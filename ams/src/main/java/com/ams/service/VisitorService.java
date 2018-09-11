package com.ams.service;

import java.util.List;

import com.ams.beans.VisitorBean;

public interface VisitorService {
	
	public void add(VisitorBean visitorBean);
	
	public void update(VisitorBean visitorBean);
	
	public void delete(String visitorId);
	
	public List<VisitorBean> findAll();
	
	public VisitorBean findById(String visitorId);

}
