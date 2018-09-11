package com.ams.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * This class stores scanned copy of documents. Documents are available in folder
 * @author Rajshekhar
 *
 */
@Entity
@Table(name = "documents")
public class Document {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)  
	@Column(name = "document_id")
	private Long documentId;

	@Column(name = "document_name")
	private String documentName;

	@Column(name = "document_path")
	private String documentPath;

	@Column(name = "user_id")
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
