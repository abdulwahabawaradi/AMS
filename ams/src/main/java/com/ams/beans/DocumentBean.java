package com.ams.beans;

import org.springframework.stereotype.Component;

/**
 * This class stores scanned copy of documents. Documents are available in folder
 * @author Rajshekhar
 *
 */
@Component
public class DocumentBean {

	private Long documentId;

	private String documentName;

	private String documentPath;

	private String userId;

	public Long getDocumentId() {
		return documentId;
	}

	public void setDocumentId(Long documentId) {
		this.documentId = documentId;
	}

	public String getDocumentName() {
		return documentName;
	}

	public void setDocumentName(String documentName) {
		this.documentName = documentName;
	}

	public String getDocumentPath() {
		return documentPath;
	}

	public void setDocumentPath(String documentPath) {
		this.documentPath = documentPath;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	
}
