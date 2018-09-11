package com.ams.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ams.beans.GenericDropdownBean;
import com.ams.dao.GenericDao;
import com.ams.entities.GenericDropdown;
import com.ams.service.GenericDropdownService;
import com.ams.utils.BeanUtils;

@Service
public class GenericDropdownServiceImpl implements GenericDropdownService {
	
		@Autowired
		private GenericDao<GenericDropdown> genericDao;
		
		@Override
		public void add(GenericDropdownBean genericDropdownBean) {
			GenericDropdown genericDropdown = BeanUtils.populateGenericDropdown(genericDropdownBean);
			genericDao.addEntity(genericDropdown);
		}

		@Override
		public void update(GenericDropdownBean genericDropdownBean) {
			GenericDropdown genericDropdown = BeanUtils.populateGenericDropdown(genericDropdownBean);
			genericDao.updateEntity(genericDropdown);
		}

	
		@Override
		public List<GenericDropdownBean> findAll() {
	        List<GenericDropdown> genericDropdowns = genericDao.findAll(GenericDropdown.class);
			return BeanUtils.populateGenericDropdownBeanList(genericDropdowns);
		}

		@Override
		public GenericDropdownBean findEntityById1(Long genericId) {
			GenericDropdown genericDropdown = genericDao.findEntityById1(GenericDropdown.class, genericId);
			GenericDropdownBean genericDropdownBean =new GenericDropdownBean(); 
			return BeanUtils.populateGenericDropdownBean(genericDropdown);
		}

		@Override
		public void delete(String genericDropdownId) {
			genericDao.deleteEntity(Long.valueOf(genericDropdownId), GenericDropdown.class);			
		}


}
