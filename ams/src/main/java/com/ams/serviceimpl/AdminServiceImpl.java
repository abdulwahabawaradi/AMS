package com.ams.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ams.beans.AdminBean;
import com.ams.dao.GenericDao;
import com.ams.entities.Admin;
import com.ams.service.AdminService;
import com.ams.utils.BeanUtils;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private GenericDao<Admin> genericDao;

	@Override
	public void add(AdminBean adminBean) {
		Admin admin = BeanUtils.populateAdmin(adminBean);
		genericDao.addEntity(admin);
	}

	@Override
	public void update(AdminBean adminBean) {
		Admin admin = BeanUtils.populateAdmin(adminBean);
		genericDao.updateEntity(admin);
	}

	

	@Override
	public List<AdminBean> findAll() {
		List<Admin> admins = genericDao.findAll(Admin.class);
		return BeanUtils.populateAdminBeanList(admins);
	}

	@Override
	public AdminBean findById(String adminId) {
		Admin admin = genericDao.findEntityById(Admin.class, adminId);
		return BeanUtils.populateAdminBean(admin);
	}

	@Override
	public void delete(String adminId) {
		genericDao.deleteEntity(Long.valueOf(adminId), Admin.class);		
	}

	

}
