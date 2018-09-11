package com.ams.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ams.beans.FundBean;
import com.ams.dao.GenericDao;
import com.ams.entities.Fund;
import com.ams.service.FundService;
import com.ams.utils.BeanUtils;

@Service
public class FundServiceImpl implements FundService{
	
	@Autowired
	private GenericDao<Fund> genericDao;

	@Override
	public void add(FundBean fundBean) {
		Fund fund = BeanUtils.populateFund(fundBean);
		genericDao.addEntity(fund);
	}

	@Override
	public void update(FundBean fundBean) {
		Fund fund = BeanUtils.populateFund(fundBean);
		genericDao.updateEntity(fund);
	}

	@Override
	public List<FundBean> findAll() {
        List<Fund> funds = genericDao.findAll(Fund.class);
		return BeanUtils.populateFundBeanList(funds);
	}

	@Override
	public FundBean findById(String fundId) {
        Fund fund = genericDao.findEntityById(Fund.class, fundId);
		return BeanUtils.populateFundBean(fund);
	}

	@Override
	public void delete(String fundId) {
		genericDao.deleteEntity(Long.valueOf(fundId), Fund.class);		
	}


}
