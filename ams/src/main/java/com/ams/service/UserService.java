package com.ams.service;

import java.util.List;

import com.ams.beans.UserBean;

public interface UserService {

	public void add(UserBean userBean);

	public void update(UserBean userBean);

	public void delete(String userId);

	public List<UserBean> findAll();

	public UserBean findById(String userId);

}
