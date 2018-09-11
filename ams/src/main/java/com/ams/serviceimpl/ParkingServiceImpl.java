package com.ams.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ams.beans.ParkingBean;
import com.ams.dao.GenericDao;
import com.ams.entities.Parking;
import com.ams.service.ParkingService;
import com.ams.utils.BeanUtils;

@Service
public class ParkingServiceImpl implements ParkingService {
	@Autowired
	private GenericDao<Parking> genericDao;

	@Override
	public void add(ParkingBean parkingParkingBean) {
		Parking parking = BeanUtils.populateParking(parkingParkingBean);
		genericDao.addEntity(parking);
	}

	@Override
	public void update(ParkingBean parkingParkingBean) {
		Parking parking = BeanUtils.populateParking(parkingParkingBean);
		genericDao.updateEntity(parking);
	}

	@Override
	public List<ParkingBean> findAll() {
        List<Parking> parkings = genericDao.findAll(Parking.class);
		return BeanUtils.populateParkingBeanList(parkings);
	}

	@Override
	public ParkingBean findById(String parkingId) {
        Parking parking = genericDao.findEntityById(Parking.class, parkingId);
		return BeanUtils.populateParkingBean(parking);
	}

	@Override
	public void delete(String parkingId) {
		genericDao.deleteEntity(Long.valueOf(parkingId), Parking.class);		
	}


}
