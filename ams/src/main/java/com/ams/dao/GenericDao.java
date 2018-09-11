package com.ams.dao;

import java.util.List;

public interface GenericDao<E> {

	public void addEntity(E entity);

	public void updateEntity(E entity);

	public void deleteEntity(Long id, Class clazz);

	public List<E> findAll(Class clazz);
	
	public E findEntityById(Class clazz, String id);
	
	public E findEntityById1(Class clazz, Long id);
	

}
