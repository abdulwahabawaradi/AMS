package com.ams.service;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import com.ams.beans.FlatBean;
import com.ams.beans.GenericDropdownBean;

public interface FlatService {

	public void add(FlatBean flatBean);

	public void update(FlatBean flatBean);

	public void delete(String flatId);

	public List<FlatBean> findAll();
	
	public FlatBean findEntityById1(Long flatId)throws IllegalAccessException,InvocationTargetException;


}
