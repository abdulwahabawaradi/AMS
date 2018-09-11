package com.ams.serviceimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ams.beans.FlatBean;
import com.ams.beans.MaintenanceListBean;
import com.ams.dao.GenericDao;
import com.ams.dao.ViewDao;
import com.ams.entities.Flat;
import com.ams.service.MaintenanceListService;

@Service
public class MaintenanceListServiceImpl implements MaintenanceListService {

	@Autowired
	private ViewDao viewDao;

	@Autowired
	private GenericDao<Flat> genericDao;

	private List<MaintenanceListBean> maintds;

	@Override
	@Transactional
	public List<MaintenanceListBean> getMaintenanceList() {
		maintds = viewDao.getMaintenanceList();
		return maintds;
	}

}
