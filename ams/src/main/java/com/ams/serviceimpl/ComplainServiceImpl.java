package com.ams.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ams.beans.ComplainBean;
import com.ams.dao.GenericDao;
import com.ams.entities.Complain;
import com.ams.service.ComplainService;
import com.ams.utils.BeanUtils;

@Service
public class ComplainServiceImpl implements ComplainService {

	@Autowired
	private GenericDao<Complain> genericDao;

	@Override
	public void add(ComplainBean complainBean) {
		Complain complain = BeanUtils.populateComplain(complainBean);
		genericDao.addEntity(complain);
	}

	@Override
	public void update(ComplainBean complainBean) {
		Complain complain = BeanUtils.populateComplain(complainBean);
		genericDao.updateEntity(complain);
	}

	

	@Override
	public List<ComplainBean> findAll() {
		List<Complain> complains = genericDao.findAll(Complain.class);
		return BeanUtils.populateComplainBeanList(complains);
	}

	@Override
	public ComplainBean findById(String complainId) {
		Complain complain = genericDao.findEntityById(Complain.class, complainId);
		return BeanUtils.populateComplainBean(complain);
	}

	@Override
	public void delete(String complainId) {
		genericDao.deleteEntity(Long.valueOf(complainId), Complain.class);		
	}

}
