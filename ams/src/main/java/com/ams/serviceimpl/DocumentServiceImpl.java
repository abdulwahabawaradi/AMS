package com.ams.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ams.beans.DocumentBean;
import com.ams.dao.GenericDao;
import com.ams.entities.Document;
import com.ams.entities.Maintenance;
import com.ams.service.DocumentService;
import com.ams.utils.BeanUtils;

@Service
public class DocumentServiceImpl implements DocumentService{

	@Autowired
	private GenericDao<Document> genericDao;
	
	@Override
	public void add(DocumentBean documentBean) {	
		Document document = BeanUtils.populateDocument(documentBean);
		//genericDao.addEntity(document);		
	}

	@Override
	public void update(DocumentBean documentBean) {
		Document document = BeanUtils.populateDocument(documentBean);
		genericDao.updateEntity(document);		
	}


	@Override
	public List<DocumentBean> findAll() {
		List<Document> documents = (List<Document>) genericDao.findAll(Document.class);
		return BeanUtils.populateDocumentBeanList(documents);
	}

	@Override
	public DocumentBean findById(String documentId) {
	    Document document = genericDao.findEntityById(Document.class, documentId);
		return BeanUtils.populateDocumentBean(document);
	}

	@Override
	public void delete(String documentId) {
		genericDao.deleteEntity(Long.valueOf(documentId), Document.class);		
	}

}
