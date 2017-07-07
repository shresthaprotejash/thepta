package com.sakha.thepta.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name="testtype")
public class TestTypeModel {

	@Id
	@GeneratedValue
	@Column(name="testTypeId")
	private int testTypeId;
	@Column(name="testType")
	private int testType;
	@Column(name="testTypeName")
	private String testTypeName;
	public int getTestTypeId() {
		return testTypeId;
	}
	public void setTestTypeId(int testTypeId) {
		this.testTypeId = testTypeId;
	}
	public int getTestType() {
		return testType;
	}
	public void setTestType(int testType) {
		this.testType = testType;
	}
	public String getTestTypeName() {
		return testTypeName;
	}
	public void setTestTypeName(String testTypeName) {
		this.testTypeName = testTypeName;
	}
}
