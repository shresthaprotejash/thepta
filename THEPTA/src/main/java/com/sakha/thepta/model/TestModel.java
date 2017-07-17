package com.sakha.thepta.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name="test")
public class TestModel {

	@Id
	@GeneratedValue
	@Column(name="testType")
	private int testType;
	@Column(name="subjectId")
	private int subjectId;
	@Column(name="teacherId")
	private int teacherId;
	@Column(name="marks")
	private int marks;
	
	public int getTestType() {
		return testType;
	}
	public void setTestType(int testType) {
		this.testType = testType;
	}
	public int getSubjectId() {
		return subjectId;
	}
	public void setSubjectId(int subjectId) {
		this.subjectId = subjectId;
	}
	public int getTeacherId() {
		return teacherId;
	}
	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}
	public int getMarks() {
		return marks;
	}
	public void setMarks(int marks) {
		this.marks = marks;
	}
	
	
	
}