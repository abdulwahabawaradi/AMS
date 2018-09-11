package com.ams.service;

import java.lang.reflect.InvocationTargetException;
import java.util.List;
import com.ams.beans.GenericDropdownBean;

public interface GenericDropdownService {
	
	public void add(GenericDropdownBean genericDropdownBean);

	public void update(GenericDropdownBean genericDropdownBean);

	public void delete(String genericDropdownId);

	public List<GenericDropdownBean> findAll();

	public GenericDropdownBean findEntityById1(Long genericId)throws IllegalAccessException,InvocationTargetException;
	
	
	


}
