package com.ams.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ams.beans.VisitorBean;
import com.ams.dao.GenericDao;
import com.ams.entities.Flat;
import com.ams.entities.Maintenance;
import com.ams.entities.Visitor;
import com.ams.service.VisitorService;
import com.ams.utils.BeanUtils;

@Service
public class VisitorServiceImpl implements VisitorService{
	
	@Autowired
	private GenericDao<Visitor> genericDao;
	
	
	@Override
	public void add(VisitorBean visitorBean) {
		Visitor visitor = BeanUtils.populateVisitor(visitorBean);
		genericDao.addEntity(visitor);
	}

	@Override
	public void update(VisitorBean visitorBean) {
		Visitor visitor = BeanUtils.populateVisitor(visitorBean);
		genericDao.updateEntity(visitor);
	}


	@Override
	public List<VisitorBean> findAll() {
        List<Visitor> visitors = genericDao.findAll(Visitor.class);
		return BeanUtils.populateVisitorBeanList(visitors);
	}

	@Override
	public VisitorBean findById(String visitorId) {
		Visitor visitor = genericDao.findEntityById(Flat.class,visitorId);
		return BeanUtils.populateVisitorBean(visitor);
	}

	@Override
	public void delete(String visitorId) {
		genericDao.deleteEntity(Long.valueOf(visitorId), Visitor.class);
	}



}
