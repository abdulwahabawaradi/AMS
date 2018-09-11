package com.ams.service;

import java.util.List;

import com.ams.beans.DocumentBean;

public interface DocumentService {

	public void add(DocumentBean documentBean);

	public void update(DocumentBean documentBean);

	public void delete(String documentId);

	public List<DocumentBean> findAll();
	
	public DocumentBean findById(String documentId);
}
