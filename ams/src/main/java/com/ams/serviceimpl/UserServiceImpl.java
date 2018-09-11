package com.ams.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;

import com.ams.beans.UserBean;
import com.ams.dao.GenericDao;
import com.ams.entities.Maintenance;
import com.ams.entities.User;
import com.ams.service.UserService;
import com.ams.utils.BeanUtils;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private GenericDao<User> genericDao;
	
	@Override
	public void add(UserBean userBean) {
		User user = BeanUtils.populateUser(userBean);
	    genericDao.addEntity(user);
	}

	@Override
	public void update(UserBean userBean) {
		User user= BeanUtils.populateUser(userBean);
		genericDao.updateEntity(user);	
	}

	

	@Override
	public List<UserBean> findAll() {		
		return BeanUtils.populateUserBeanList(genericDao.findAll(User.class));
	}

	@Override
	public UserBean findById(String userId) {		
		return BeanUtils.populateUserBean(genericDao.findEntityById(User.class,userId));
	}

	@Override
	public void delete(String userId) {
		genericDao.deleteEntity(Long.valueOf(userId), User.class);
		
	}

}
