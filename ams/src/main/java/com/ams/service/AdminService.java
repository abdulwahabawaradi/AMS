package com.ams.service;

import java.util.List;

import com.ams.beans.AdminBean;

public interface AdminService {
	
	public void add(AdminBean adminBean);

	public void update(AdminBean adminBean);

	public void delete(String adminId);

	public List<AdminBean> findAll();

	public AdminBean findById(String adminId);

}
