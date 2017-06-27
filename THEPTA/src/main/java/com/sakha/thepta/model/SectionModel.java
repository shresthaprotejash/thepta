package com.sakha.thepta.model;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name="section")
public class SectionModel {

	@Id
	@GeneratedValue
	@Column(name="sectionIds")
	private int sectionIds;
	@Column(name="sectionName")
	private String sectionName;
	public int getSectionIds() {
		return sectionIds;
	}
	public void setSectionIds(int sectionIds) {
		this.sectionIds = sectionIds;
	}
	public String getSectionName() {
		return sectionName;
	}
	public void setSectionName(String sectionName) {
		this.sectionName = sectionName;
	}
	
	
}
