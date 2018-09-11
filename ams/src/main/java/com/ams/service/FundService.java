package com.ams.service;

import java.util.List;

import com.ams.beans.FundBean;

public interface FundService {
	public void add(FundBean fundBean);

	public void update(FundBean fundBean);

	public void delete(String fundId);

	public List<FundBean> findAll();

	public FundBean findById(String fundId);

}
