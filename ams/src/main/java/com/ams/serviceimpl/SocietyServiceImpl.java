package com.ams.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ams.beans.SocietyBean;
import com.ams.dao.GenericDao;
import com.ams.entities.Society;
import com.ams.service.SocietyService;
import com.ams.utils.BeanUtils;

@Service
public class SocietyServiceImpl implements SocietyService{
	
	@Autowired
	private GenericDao<Society> genericDao;

	@Override
	public void add(SocietyBean societyBean) {
		Society society = BeanUtils.populateSociety(societyBean);
		genericDao.addEntity(society);
	}

	@Override
	public void update(SocietyBean societyBean) {
		Society society = BeanUtils.populateSociety(societyBean);
		genericDao.updateEntity(society);
	}

	

	@Override
	public List<SocietyBean> findAll() {
		List<Society> societys = genericDao.findAll(Society.class);
		return BeanUtils.populateSocietyBeanList(societys);
	}

	@Override
	public SocietyBean findById(String societyId) {
		Society society = genericDao.findEntityById(Society.class, societyId);
		return BeanUtils.populateSocietyBean(society);
	}

	@Override
	public void delete(String societyId) {
		genericDao.deleteEntity(Long.valueOf(societyId), Society.class);		
	}


}
