package com.ams.service;

import java.util.List;

import com.ams.beans.ParkingBean;

public interface ParkingService {
	

	public void add(ParkingBean parkingBean);

	public void update(ParkingBean parkingBean);

	public void delete(String parkingId);

	public List<ParkingBean> findAll();
	
	public ParkingBean findById(String parkingId);

}
